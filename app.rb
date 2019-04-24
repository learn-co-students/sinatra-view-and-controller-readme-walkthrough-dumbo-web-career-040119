require_relative 'config/environment'

class App < Sinatra::Base
  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    og = params["string"]
    @og_reversed = og.reverse

    erb :reversed
  end

  get '/friends' do
    # Write your code here!
    # @friends.each do |friend|
    #   <h2><%= friend %</h2>
    # end

    erb :friends
  end
end
