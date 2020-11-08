require 'spec_helper'

describe 'API' do
  describe 'Weather Controller' do
    context 'get' do
      it 'returns 200' do
        get '/api/current_weather'
        parsed_body = JSON.parse(last_response.body)

        expect(last_response).to be_ok
      end
    end
  end
end
