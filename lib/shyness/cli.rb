require 'thor'
require 'shyness'

module Shyness
  class CLI < Thor
    desc "ask QUESTION", "Posts a question to the Ask application"
    def ask(question)
      Shyness::Ask.add(question)
      puts question
    end
  end

  desc "add_alias", "Adds an alias `ask` to the current user's .bash_profile so the user can use `ask` in place of `shyness ask`"
  def add_alias
    `echo 'alias ask="shyness ask"' >> ~/.bash_profile`
  end
end
