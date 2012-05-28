module Subdomain
  class Principal
    def self.matches?(request)
      true unless request.subdomain.present? && request.subdomain != 'www'
    end
  end

  class Canal
    def self.matches?(request)
      request.subdomain.present? && request.subdomain != 'www'
    end
  end
end
