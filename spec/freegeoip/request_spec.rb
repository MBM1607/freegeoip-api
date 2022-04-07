# frozen_string_literal: true

require 'spec_helper'

describe Freegeoip::Request do
  describe '#get' do
    it 'returns a hash with attributes' do
      res = Freegeoip::Request.new('8.8.8.8', API_KEY)

      expect(res.get).to be_kind_of Hash
    end
  end
end
