require 'json'

RSpec.describe Shyness do
  it "has a version number" do
    expect(Shyness::VERSION).not_to be nil
  end

  it "Posts a question" do
    question = "Why so sad?"
    actual   = JSON.parse(Shyness::Ask.add(question).body)

    expect(actual["text"]).to eq(question)
  end
end
