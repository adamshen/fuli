require 'timeout'

module Fuli
  class Rosi
    class << self
      def fetch(no)

        begin
          get_rosi_pic(no)
        rescue Timeout::Error => err
          puts "Timeout"
          return
        rescue OpenURI::HTTPError => err
          puts "Finish!"
          return
        end
      end

      private
      def get_rosi_pic(no)
        i = 1
        loop do
          Timeout::timeout(60) {
            n = "%03d" % i

            open("http://rosi.wangyunsheng.com/rosi/tu/NO.#{no}/rosi-#{no}-#{n}.jpg") do |f|
              puts "Start fetching rosi-#{no}-#{n}.jpg"

              File.open("ROSI_NO_#{no}/#{n}.jpg", "wb") do |file|
                file.puts f.read
              end

              puts "Done!"
            end

            i += 1
          }

          sleep 5
        end
      end
    end
  end
end
