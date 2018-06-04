require 'rails_helper'

RSpec.describe AdminController, type: :controller do

  describe "GET #imad" do
    it "returns http success" do
      get :imad
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #musfi" do
    it "returns http success" do
      get :musfi
      expect(response).to have_http_status(:success)
    end
  end

end
