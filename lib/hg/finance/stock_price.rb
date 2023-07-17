require 'hg/finance/locale'

module HG
  module Finance

    class StockPrice
      #"ITSA4": {
      #  "kind": "stock",
      #  "symbol": "ITSA4",
      #  "name": "ItauSA",
      #  "company_name": "ItauSA S.A.",
      #  "document": "61.532.644/0001-15",
      #  "description": "Gestão de Participações Societárias (holding)",
      #  "website": "http://www.itausa.com.br/",
      #  "region": "Brazil/Sao Paulo",
      #  "currency": "BRL",
      #  "market_time": {
      #    "open": "10:00",
      #    "close": "17:30",
      #    "timezone": -3
      #  },
      #  "logo": {
      #    "small": "https://assets.hgbrasil.com/finance/companies/small/itausa.png",
      #    "big": "https://assets.hgbrasil.com/finance/companies/big/itausa.png"
      #  },
      #  "market_cap": 84720.1,
      #  "price": 8.68,
      #  "change_percent": 1.05,
      #  "updated_at": "2023-04-29 20:51:16"
      #}
      attr_accessor :symbol
      attr_accessor :name
      attr_accessor :company_name
      attr_accessor :document
      attr_accessor :description
      attr_accessor :website
      attr_accessor :region
      attr_accessor :currency
      attr_accessor :logo
      attr_accessor :market_cap
      attr_accessor :price
      attr_accessor :change_percent
      attr_accessor :updated_at

      def initialize(options = {})
        @options = options
        @name  = options["name"]
        @symbol  = options["symbol"]
        @company_name = options["company_name"]
        @document = options["document"]
        @description = options["description"]
        @website = options["website"]
        @region = options["region"]
        @currency = options["currency"]
        @logo = options["logo"]
        @market_cap = options["market_cap"]
        @price = options["price"]
        @change_percent = options["change_percent"]
        @updated_at = options["updated_at"]
      end

      def to_s separator = ' - '
        to_return = []

        to_return << "#{self.name} - #{self.symbol}"
        to_return << self.price

        return to_return.join(separator)
      end

      def inspect
        self.to_s
      end
    end

  end
end
