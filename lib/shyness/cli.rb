require 'thor'
require 'shyness'

module Shyness
  class CLI < Thor
    desc "ask QUESTION", "Posts a question to the Ask application"
    def ask(question)
      Shyness::Ask.add(question)
      puts question
    end

    desc "add_alias", "Adds an alias `sa` to the current user's .bash_profile so the user can use `sa` in place of `shyness ask`"
    def add_alias
      `echo 'alias sa="shyness ask"' >> ~/.bash_profile`
    end
  end
end
