require 'bundler/setup'
require 'nokogiri'
require 'open-uri'
require 'private_pub'

namespace :icecast do
  task :fetch_listeners do
    #url = "http://assiste.serpro.gov.br/icecast/status.xsl"
    url = "http://ec2-177-71-168-62.sa-east-1.compute.amazonaws.com/status.html"
    doc = Nokogiri::HTML(open(url))
    doc.css(".roundcont").each do |item|
      item_streamming_url = item.at_css("tr:nth-child(2) .streamdata")
      streamming_url = "http://assiste.serpro.gov.br:8000/rio20dialogos.ogv"
      next unless item_streamming_url.present? && item_streamming_url.text == streamming_url
      current_listeners = item.at_css("tr:nth-child(9) .streamdata").text
      peak_listeners = item.at_css("tr:nth-child(10) .streamdata").text
      if current_listeners && peak_listeners
        puts "usuarios online: #{current_listeners}\nrecord usuarios online: #{peak_listeners}"
        CONFIG = Debateaberto::Application::CONFIG
        PrivatePub.config[:server] = CONFIG['faye_server']
        PrivatePub.config[:secret_token] = CONFIG['faye_secret_token']
        PrivatePub.config[:signature_expiration] = CONFIG['faye_signature_expiration']
        PrivatePub.publish_to "/telespectadores", :online => current_listeners,
          :record => peak_listeners
      end
    end
  end
end
