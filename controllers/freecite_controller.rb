require 'freecite'
require 'json'

class FreeciteController < Sinatra::Base
  get '/search' do
    content_type 'application/json ; charset=utf-8'

    query = params["q"] || ""
    JSON.generate(CRFParser.new.parse_string(query) || {})
  end
end
