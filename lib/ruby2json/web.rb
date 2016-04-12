require 'sinatra'
require_relative 'parser'

module Ruby2JSON
  class Web < Sinatra::Base
    set :views, __dir__ + '/templates'

    before do
      content_type :html
    end

    get '/' do
      slim :form, locals: { text: nil, json: nil, error: nil }
    end

    post '/' do
      begin
        json = Ruby2JSON::Parser.pretty_generate params['text'] if params['text']
        slim :form, locals: { text: params['text'], json: json, error: nil }
      rescue JSON::ParserError => e
        error = "JSON parser error: #{e.message}"
        slim :form, locals: { text: params['text'], json: json, error: error }
      end
    end

    get '/about' do
      slim :about
    end
  end
end
