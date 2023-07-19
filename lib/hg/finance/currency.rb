require 'hg/finance/locale'

module HG
  module Finance

    class Currency
      # Public: Name
      attr_accessor :name

      # Public: ISO code
      attr_accessor :iso_code

      # Public: Source currency
      attr_accessor :source

      # Public: Price to buy
      attr_accessor :buy

      # Public: Price to seel
      attr_accessor :sell

      # Public: Last day variation
      attr_accessor :variation

      def initialize(options = {})
        if options.count != 0
          @name      = options[:name] if options[:name]
          @iso_code  = options[:iso_code] if options[:iso_code]
          @source    = options[:source] if options[:source]
          @buy       = options[:buy].to_f if options[:buy]
          @sell      = options[:sell].to_f if options[:sell]
          @variation = options[:variation].to_f if options[:variation]
        end
      end
    end

  end
end
