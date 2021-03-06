require 'spec_helper'

describe Restaurant::TagsController do
  describe 'routing' do

    it 'routes to #create with POST and PUT' do
      post('/restaurants/1/tag').should route_to('restaurant/tags#create', id: '1')
       put('/restaurants/1/tag').should route_to('restaurant/tags#create', id: '1')
    end

    it 'routes to #destroy' do
      delete('/restaurants/1/tag').should route_to('restaurant/tags#destroy', id: '1')
    end

  end
end
