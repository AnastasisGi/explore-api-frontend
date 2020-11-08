class WeatherApi < Sinatra::Base
  namespace '/api' do
    get '/current_weather' do
      data = File.read('data.json')
      status 200

      json data
    end
  end
end
