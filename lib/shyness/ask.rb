require 'faraday'

module Shyness
  class Ask
    def self.add(question)
      conn.post do |req|
        req.params['text'] = question
      end
    end

    private
    def self.conn
      Faraday.new(:url => 'https://stark-oasis-58079.herokuapp.com/api/v1/questions') do |faraday|
        faraday.request  :url_encoded
        faraday.adapter  Faraday.default_adapter
      end
    end
  end
end
