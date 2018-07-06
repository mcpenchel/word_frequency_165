# Check if the method returns a hash
# Check if it is correct/class
# Ensure it returns an empty hash and send an empty string
require_relative "../frequencies"
describe "#frequencies" do
  it "returns a hash" do
    expect(frequencies("brazil").class).to eq(Hash)
  end
  it "returns correct value" do
    expect(frequencies("japan is a country and brazil is a country")["country"]).to eq(2)
    expect(frequencies("japan is a country and brazil is a country")["japan"]).to eq(1)
  end
  it "returns empty hash when send empty string" do
    expect(frequencies("")).to eq({})
  end
end
