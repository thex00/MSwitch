# The MSwitch Testing File

require 'lib'


# --------------------------------------------------- MStorage 

describe "MStorage" do
  describe "MessageQueue" do
    
    it "must be able to read the database configuration" do
      # ...
      false
    end
    
    it "must be able to connect to database" do
      x = MStorage::Queue.new
      x.start
      x.connected?
      x.stop
    end

    it "must be able to clear the message from the queue" do
      x = MStorage::Queue.new
      x.start
      x.clear
      x.stop
    end

    it "must be able to write messages to the queue" do
      # ...
      false
    end

    it "must be able to read all messages from the queue" do
      # ...
      false
    end

    it "must be able to read all message from the queue for a specified target" do
      # ...
      false
    end

    it "must be able to fetch a message by id from the queue" do
      # ...
      false
    end

    it "must be able to delete a message by id from the queue" do
      # ...
      false
    end

    


  end
end

# --------------------------------------------------- MTwirl

describe "MTwirl" do
  describe "Router" do

    it "must be able to read its configuration" do
      # ...
      false
    end

    it "must listen to a port" do
      # ...
      false
    end

    it "must have authentication for connection clients" do
      # ...
      false
    end

    it "must deny non-authenticated clients" do
      # ...
      false
    end

    it "must be able to show all connected clients" do
      # ...
      false
    end

    it "must be able to receive alive requests" do
      # ...
      false
    end

    it "must accept an incoming message and acknowledge the transfer" do
      # ...
      false
    end

    it "must validate the received message" do
      # ...
      false
    end

    it "must insert the message in the message pool" do
      # ...
      false
    end

    it "must read from the message pool" do
      # ...
      false
    end

    it "must send messages from the pool to targets" do
      # ...
      false
    end
  
  end


# --------------------------------------------------- MManager

describe "MManager" do
  describe "Logger" do
    it "must log an action in the database" do
      # ...
      false
      end

    it "must log an event in the database" do
      # ...
      false
      end

    it "must be able to clear the logs" do
      # ...
      false
      end

    it "must be able to fetch all log entries" do
      # ...
      false
      end

    it "must be able to fetch a log entry by id" do
      # ...
      false
      end

  end

  describe "Admin" do
    it "must be able to display current settings" do
      # ...
      false
    end

    it "must be able to display current statistics" do
      # ...
      false
    end

    
  end

end

# --------------------------------------------------- MClient

describe "MClient" do
  describe "Dummy" do
    it "must be able to read its configuration" do
      # ...
      false
    end
    
    it "must be able to connect to a remote host" do
      # ...
      false
    end

    it "must be able to authenticate itself" do
      # ...
      false
    end

    it "must be able to transfer a test message" do
      # ...
      false
    end

    it "must be able to receive a message" do
      # ...
      false
    end

  end
end

