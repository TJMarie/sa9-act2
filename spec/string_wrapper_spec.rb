require "string_wrapper"
RSpec.describe StringWrapper do
  describe "#reverse" do
    it "reverses the string" do
      reverse_string = StringWrapper.new("string")
      expect(reverse_string.reverse).to eq "gnirts"
    end
  end

  describe "#upcase" do
    it "converts the string to uppercase" do
      upcase_string = StringWrapper.new("test")
      expect(upcase_string.upcase).to eq "TEST"
    end
  end

  describe "#downcase" do
    it "converts the string to lowercase" do
      downcase_string = StringWrapper.new("Test String")
      expect(downcase_string.downcase).to eq "test string"
    end
  end
end
