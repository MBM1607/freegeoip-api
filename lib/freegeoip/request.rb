# frozen_string_literal: true

require 'json'
require 'uri'
require 'net/http'

module Freegeoip
  # Class to contain main request making logic to api.freegeoip.app
  class Request
    ENDPOINT = 'https://api.freegeoip.app/json'

    attr_reader :remote

    def initialize(remote, api_key)
      @remote = remote
      @api_key = api_key
    end

    def get
      uri = URI("#{ENDPOINT}/#{remote}?apikey=#{@api_key}")
      res = Net::HTTP.get(uri)

      JSON.parse(res)
    end
  end
end
