require_relative 'config/environment'

class App < Sinatra::Base
  get ('/reverse') {
    erb :reverse
  }

  post ('/reverse') {
    original_string = params["string"]
    @reversed_string = original_string.reverse
    erb :reversed
  }

  get ('/friends') {
    @friends = ['Emily Wilding Davison', 'Harriet Tubman', 'Joan of Arc', 'Malala Yousafzai', 'Sojourner Truth']
    erb :friends
  }

end
