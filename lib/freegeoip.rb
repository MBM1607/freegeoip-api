# frozen_string_literal: true

require 'freegeoip/version'
require 'freegeoip/request'
require 'freegeoip/response'
require 'helpers/configuration'

# Main gem module
module Freegeoip
  extend Configuration

  define_setting :api_key, 'XXXXXXXXX'

  def self.get(remote)
    request = Request.new(remote, Freegeoip.api_key)
    Response.new(remote, request.get)
  end
end
