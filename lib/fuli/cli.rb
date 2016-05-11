module Fuli
  class Cli < Thor

    desc "rosi NUM", "download rosi pic of rosi_no"

    def rosi(no)
      unless no.to_i > 0 && no.to_i < 2000
        puts "wrong number"
        return
      end

      no = "%03d" % no

      `mkdir ROSI_NO_#{no}`
      Rosi.fetch(no)
    end
  end
end