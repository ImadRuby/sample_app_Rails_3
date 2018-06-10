#A corriger et retester plus tard
require 'rails_helper'
require 'spec_helper'


RSpec.describe "LayoutLinks", type: :request do

  before (:each) do
    @base_title = "Simple App du Tutoriel Ruby on Rails |"
  end

  describe "GET /layout_links" do
    it "works! (now write some real specs)" do
      get layout_links_index_path
      expect(response).to have_http_status(200)
    end
  end

  #test écrit par Imad
  it "devrait trouver une page d'accueil à '/'" do
  	get '/'
  	expect(response).to have_selector('title',
      :visible => false,
      :text => @base_title + "Accueil"
      )
  end

  it "devrait trouver une page de contact à '/contact'" do
  	get '/contact'
  	expect(response).to have_selector('title',
      :visible => false,
      :text => @base_title + "Contact"
      )
  end

  it "devrait trouver une page A propos à '/about'" do
  	get '/about'
  	expect(response).to have_selector('title',
      :visible => false, 
      :text => @base_title + "À propos"
      )
  end

  it "devrait affichier une page Aide à '/help'" do
  	get '/help'
  	expect(response).to have_selector('title',
      :visible => false, 
      :text => @base_title + "Aide"
      )
  end

end
