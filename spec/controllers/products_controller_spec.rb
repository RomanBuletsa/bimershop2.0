require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  let!(:user) { build(:user, email: "test@gmail.com") }

    login_user

    it "should have a current_user" do
      expect(subject.current_user).to_not eq(nil)
    end


      describe 'GET #new' do
          it "response 200" do
            get :new
            expect(response).to have_http_status(200)
          end
        end

        describe "GET #index" do
          it "returns http success" do
            get :index
            expect(response).to have_http_status(:success)
          end
        end

    describe 'POST #create' do
      it "should create product and redirect" do
        post :create, params: {product: {user_id: 1, name: "Product", description: "Top", price: 1, count: 1}}
        expect(response).to redirect_to root_path
      end
    end


end
