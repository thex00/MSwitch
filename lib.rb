module MStorage

  require 'rubygems'
  require 'mysql'

  class Queue

    def initialize
    end

    def start
      @x = Mysql.real_connect("localhost", "root", "root", "mswitch")
    rescue
      false
    end

    def connected?
      @x.stat
        true
    rescue
        false
    end

    def stop
      @x.close
    rescue
      false
    end

    def clear
      @x.query("TRUNCATE TABLE cache")
    end

  end

end


