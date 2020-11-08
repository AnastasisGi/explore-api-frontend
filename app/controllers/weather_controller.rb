class WeatherApi < Sinatra::Base
  set :root, File.dirname(File.expand_path('..', __FILE__))
  
  get '/' do
    puts 'loadin the index'
    erb(:index)
  end
end
