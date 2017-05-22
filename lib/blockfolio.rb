require 'net/http'
require 'json'
require 'pry'

# Version
require "blockfolio/version"

require "blockfolio/api_resource"

require "blockfolio/dashboard"

module Blockfolio
  @api_base = 'http://blockfoliorest-pxrpmzggzv.elasticbeanstalk.com/rest'

  @device_id      = ENV['BLOCKFOLIO_DEVICE_ID']
  @fiat_currency  = ENV['BLOCKFOLIO_FIAT_CURRENCY'] || 'USD'
  @locale         = ENV['BLOCKFOLIO_LOCALE'] || 'en-US'

  class << self
    attr_accessor :device_id, :fiat_currency, :locale
    attr_reader :api_base
  end
end
