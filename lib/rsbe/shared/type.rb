require 'ostruct'

module Rsbe
  module Shared
    class Type
      attr_reader :name, :code
      def initialize(hash, args = {})
        @name = hash[:name]
        @code = hash[:code]
      end
    end
  end
end
