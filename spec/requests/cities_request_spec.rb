require 'rails_helper'

RSpec.describe 'Cities', type: :request do
  describe 'GET /' do
    it 'returns search cities screen' do
      get '/'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /search' do
    it 'returns all cities of Santa Catarina' do
      sc = State.find_by abbreviation: 'SC'

      get "/cities/search?state_id=#{sc.id}"

      expect(response.content_type).to eq('application/json')
      expect(response).to have_http_status(:success)
      result = JSON.parse(response.body)
      expect(result.class).to be Array
      expect(result.size).to eq 3
    end

    it "should return Florianópolis when search 'florianopolis'" do
      sc = State.find_by abbreviation: 'SC'

      get "/cities/search?state_id=#{sc.id}&name=florianopolis"

      result = JSON.parse(response.body)
      expect(result.class).to be Array
      expect(result.first['name']).to eq 'Florianópolis'
    end

    it "should return Porto Alegre when search 'alegre'" do
      sc = State.find_by abbreviation: 'RS'

      get "/cities/search?state_id=#{sc.id}&name=alegre"

      result = JSON.parse(response.body)
      expect(result.class).to be Array
      expect(result.first['name']).to eq 'Porto Alegre'
    end
  end
end
