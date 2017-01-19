module Rsbe
  module Shared
    class Se
      def self.do_types
        [[:audio],
         [:video],
         [:book],
         [:image],
         [:map],
         [:image_set, 'image set'],
         [:postcard]].collect do |a|
          Rsbe::Shared::Type.new(
            code: get_code(a),
            name: get_name(a)
          )
        end
      end

      private
      
      def self.get_code(a)
        a[0].to_s
      end

      def self.get_name(a)
        a[1].nil? ? a[0].to_s : a[1]
      end
    end
  end
end
