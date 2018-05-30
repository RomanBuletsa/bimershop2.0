require "rails_helper"

RSpec.describe User, :type => :model do

	subject{
		build(:user)
	}

	describe "validation" do
 		it "is valid with valid atributes" do
 			expect(subject).to be_valid
		end
	end

 describe "associations" do
	it { should have_many(:products).dependent(:destroy) }
  it { should have_one(:userparam)}
  it { should have_many(:postcomments)}
 end
end
