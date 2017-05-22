module Blockfolio
  class ApiResource
    def self.retrieve(*args)
      instance = self.new(*args)
      instance.refresh
      instance
    end

    def refresh
      response = request(:get, resource_url)
      @data    = JSON.parse(response)
    end

    private

    def request(_method, url)
      uri = URI.parse([Blockfolio.api_base, url].join)
      Net::HTTP.get(uri)
    end
  end
end
