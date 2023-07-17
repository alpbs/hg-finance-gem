require 'hg/finance/crypto_currency'
require 'hg/finance/currency'
require 'hg/finance/taxes'
require 'hg/finance/stock'

module HG
  module Finance

    class Response

      attr_accessor :request, :requested_at, :key_status
      attr_accessor :response

      def initialize params, host_name, use_ssl = true
        query_params = params.map{|k,v| "#{k.to_s}=#{v.to_s}"}.join('&')
        @request = (use_ssl ? 'https' : 'http') + host_name + '?' + query_params
        @requested_at = Time.now

        request_data = JSON.parse(URI.open(self.request).read)

        @response = request_data['results'] if request_data['results']


        return self
      end
    end
  end
end
