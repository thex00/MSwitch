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

module MTwirl
  require 'socket'

  class Router
    def initialize
      @daemon = TCPServer.new('127.0.0.1', 6005)  
    end

    def start
        loop do  
          Thread.start(@daemon.accept) do |s|  
            print(s, " is connected\n")  
            s.write("OK\n")
            client_socketfamily, client_port, *client_addr = s.getpeername.unpack('nnC4')
            source = client_addr.join('.')
              print("from: #{source}\n")
              s.gets
              s.write($_)
              print($_)
            print(s, "is closed\n")  
            s.close  
            end
          end
    end

    def stop
      @daemon.close
    end
      
  end
end


