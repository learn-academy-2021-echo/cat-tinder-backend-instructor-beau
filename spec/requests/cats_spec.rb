require 'rails_helper'

RSpec.describe "Cats", type: :request do
  describe "GET /index" do
    it 'gets a list of cats' do
      Cat.create(
        # create a cat
        name: 'Toast',
        age: 2,
        enjoys: 'wearing hats',
        image: 'https://media.istockphoto.com/photos/puppy-wearing-cat-ears-for-halloween-picture-id469195013?k=20&m=469195013&s=170667a&w=0&h=rxlll2wFYzst1UL_DUE0gZG8DgfDBksguNELUqt4IcQ='
      )
      # make an index request
      get '/cats'

      #parse our request data
      cat = JSON.parse(response.body)

      # asserting against the response code
      expect(response).to have_http_status(200)
      # asserting against the payload
      expect(cat.length).to eq 1  
    end
  end

  describe "POST /create" do
    it 'creates a cat' do
      cat_params: {
        cat: {
          name: 'Toast',
          age: 2,
          enjoys: 'wearing hats',
          image: 'https://media.istockphoto.com/photos/puppy-wearing-cat-ears-for-halloween-picture-id469195013?k=20&m=469195013&s=170667a&w=0&h=rxlll2wFYzst1UL_DUE0gZG8DgfDBksguNELUqt4IcQ='
        }
      }

      #make a request
      post '/cats', params: cat_params

      expect(response).to have_http_status(200)

      #pull the cat from the db
      cat = Cat.first

      #asserting the payload
      expect(cat.name).to eq("Toast")
      expect(cat.age).to eq(2)
      expect(cat.emjoys).to eq('wearing hats')    
    end
  end
end
