class WeatherApp < Sinatra::Base
  set :root, File.dirname(File.expand_path('..', __FILE__))

  get '/' do
    puts 'loading the index'
    erb(:index)
  end
end
