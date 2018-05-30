require 'rails_helper'

RSpec.describe Product, type: :model do

let!(:user){create(:user)}
	subject{
		build(:product)
	}


	describe "validation" do
		it "is valid with valid atributes" do
			expect(subject).to be_valid
		end

		it "should not be valid without name" do
			subject.name = nil
			expect(subject).to_not be_valid
		end

		it "should not be valid without price" do
			subject.price = nil
			expect(subject).to_not be_valid
		end

		it "should not be valid without count" do
			subject.count = nil
			expect(subject).to_not be_valid
		end

		it "should be valid without name" do
			subject.name = "Product"
			expect(subject).to be_valid
		end

		it "should be valid without price" do
			subject.price = 5
			expect(subject).to be_valid
		end

		it "should be valid without count" do
			subject.count = 10
			expect(subject).to be_valid
		end

		end

	describe "association" do
  		it { should belong_to(:user)}
  	end
end
