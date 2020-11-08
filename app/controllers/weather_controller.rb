class WeatherApi < Sinatra::Base
  set :root, File.dirname(File.expand_path('..', __FILE__))
  
  get '/' do
    erb(:index)
  end
end
