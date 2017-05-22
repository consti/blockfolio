module Blockfolio
  class Dashboard < ApiResource
    def portfolio
      @data['portfolio']
    end

    private

    def resource_url
      '/get_all_positions/%{device_id}?'\
      'fiat_currency=%{fiat_currency}&locale=%{locale}' % {
        device_id: Blockfolio.device_id,
        fiat_currency: Blockfolio.fiat_currency,
        locale: Blockfolio.locale
      }
    end
  end
end
