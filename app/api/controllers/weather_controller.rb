class WeatherApp < Sinatra::Base
  namespace '/api' do
    get '/current_weather' do
      puts 'at the endpoint "/current_weather"'
      data = File.read('data.json')
      puts data
      status 200

      json data
    end
  end
end
