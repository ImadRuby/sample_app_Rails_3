require 'rails_helper'
require 'spec_helper'

RSpec.describe UsersController, type: :controller do
	render_views

	before (:each) do
    @base_title = "Simple App du Tutoriel Ruby on Rails | "
  	end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "doit afficher le titre 'new'" do
    	get :new
    	expect(response.body).to have_selector('title',
    		:visible => false,
    		:text => @base_title + "Inscription"
    	)
    end

  end

end
