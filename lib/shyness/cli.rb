require 'thor'
require 'shyness'

module Shyness
  class CLI < Thor
    desc "ask", "Posts a question to the Ask application"
    def ask(question)
      Shyness::Ask.add(question)
    end
  end
end
