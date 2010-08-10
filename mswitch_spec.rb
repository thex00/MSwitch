# The MSwitch Testing File

require 'lib'


# --------------------------------------------------- MStorage 

describe "MStorage" do
  describe "MessageQueue" do
    it "must be able to connect to database" do
      x = MStorage::Queue.new
      x.start
      x.connected?
      x.stop
    end

    it "must be able to clear the database" do
      x = MStorage::Queue.new
      x.start
      x.clear
      x.stop
    end

  end
end

# --------------------------------------------------- MTwirl

describe "MTwirl" do
  describe "Router" do
    it "must accept data over tcp" do
    # ...
    end

  

  end
