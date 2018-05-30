require 'rails_helper'
RSpec.describe PostsController, type: :controller do


  describe "GET #index" do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(:success)
      end
  end


  describe 'POST #create' do
    it "should create product and redirect" do
      post :create, params: {post: {name: "Post"}}
      expect(response).to redirect_to posts_path
    end
  end

end
