require 'sinatra'
require 'sinatra/reloader'

class MyApp < Sinatra::Base
  class Stream
    def each
      100.times { |i| yield "#{i}\n" }
    end
  end

  get '/' do
    Stream.new
  end

  post '/' do
    redirect to '/'
  end
end
