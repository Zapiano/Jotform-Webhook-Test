require 'sinatra'
require 'sinatra/reloader'

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
