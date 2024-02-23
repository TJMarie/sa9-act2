require "user"
RSpec.describe User do
  describe "#log_in" do
    it "logs the user in" do
      user = User.new "test"
      user.log_in
      expect(user.logged_in).to be true
    end
  end

  describe "#log_out" do
    it "logs the user out" do
      user = User.new "test"
      user.log_out
      expect(user.logged_in).to be false
    end
  end

  describe "#username" do
    it "returns the correct username" do
      user = User.new "test"
      expect(user.username).to eq("test")
    end
  end
end
