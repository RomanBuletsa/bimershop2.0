require 'rails_helper'

RSpec.describe UserparamsController, type: :controller do
let!(:user) { build(:user, email: "test@gmail.com") }

login_user

  it "should have a current_user" do
    expect(subject.current_user).to_not eq(nil)
  end

  describe 'GET #new' do
      it "should find current_user and open form for create Profile" do
        get :new
        expect(subject.current_user.email).to eq("test@test.com")
        expect(subject.current_user.email).to_not eq(user.email)
        expect(response).to have_http_status(200)
      end
    end

    describe "GET #index" do
      it "returns http success" do
        get :index
        expect(response).to have_http_status(302)
      end
  end


  describe "GET #index" do

    let!(:userparam){create(:userparam ,user_id: subject.current_user.id )}

    it "returns http success" do
      get :index
      expect(response).to redirect_to userparam_path(subject.current_user.id)
    end
end


describe 'POST #create' do
  it "should create userparam and redirect" do
    post :create, params: {userparam: {firstname: "Tester",lastname: "Tester", country: "Ukraine", city: "Uzh", phone:"+380123456789"}}
    expect(response).to redirect_to userparam_path(subject.current_user.id)
  end
end

describe "GET #show" do
  let!(:userparam){create(:userparam ,user_id: subject.current_user.id )}
    it "returns http success" do
      get :show, params: {id: subject.current_user.userparam.id}
      expect(response).to have_http_status(:success)
    end
end

  describe 'PATCH #update' do
  	before do
      @userparam = create(:userparam, user_id: subject.current_user.id)
    end
    it "should update userparam and redirect to profile" do
      patch :update, params: { id: subject.current_user.id, userparam: {firstname: "Tester2"}}
      expect(subject.current_user.userparam.firstname).to eq("Tester2")
      expect(response).to redirect_to userparam_path(subject.current_user.id)
    end
  end


end
