# frozen_string_literal: true

require 'spec_helper'

describe Freegeoip do
  it 'has a version number' do
    expect(Freegeoip::VERSION).not_to be nil
  end

  describe '.get' do
    it 'returns a response object' do
      res = Freegeoip.get('8.8.8.8')

      expect(res).to be_kind_of(Freegeoip::Response)
    end

    # This test requires setting a valid api key
    # it 'returns the data from 8.8.8.8' do
    #   res = Freegeoip.get('8.8.8.8')

    #   puts res

    #   expect(res.ip).to_not be_empty
    #   expect(res.country_code).to eq 'US'
    #   expect(res.country_name).to eq 'United States'
    #   expect(res.region_code).to eq ''
    #   expect(res.region_name).to eq ''
    #   expect(res.city).to eq ''
    #   expect(res.zip_code).to eq ''
    #   expect(res.time_zone).to eq 'America/Chicago'
    #   expect(res.latitude).to eq 37.751
    #   expect(res.longitude).to eq(-97.822)
    #   expect(res.metro_code).to eq 0
    # end
  end
end
