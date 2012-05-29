require 'bundler'
require 'nokogiri'
require 'open-uri'
require 'private_pub'

namespace :icecast do
  task :fetch_listeners do
    CONFIG = Debateaberto::Application::CONFIG

    url = "http://assiste.serpro.gov.br/icecast/status.xsl"

    doc = Nokogiri::HTML(open(url))

    doc.css(".roundcont").each do |item|
      item_streamming_url = item.at_css("tr:nth-child(2) .streamdata")
      streamming_url = "http://assiste.serpro.gov.br:8000/rio20dialogos.ogv"

      next unless item_streamming_url.present? && item_streamming_url.text == streamming_url

      current_listeners = item.at_css("tr:nth-child(9) .streamdata").text
      peak_listeners = item.at_css("tr:nth-child(10) .streamdata").text

      current_listeners ||= 0
      peak_listeners ||= 0

      if current_listeners && peak_listeners
        PrivatePub.config[:server] = CONFIG['faye_server']
        PrivatePub.config[:secret_token] = CONFIG['faye_secret_token']
        PrivatePub.publish_to '/telespectadores', :online => current_listeners,
          :record => peak_listeners
      end
    end
  end
end
