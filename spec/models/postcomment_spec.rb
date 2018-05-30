require 'rails_helper'

RSpec.describe Postcomment, type: :model do
	let!(:user){create(:user)}
	let!(:category){create(:category)}
  	let!(:post){create(:post)}
	subject{
		build(:postcomment)
	}

	context "validation" do
 		it "is valid with valid atributes" do
 			expect(subject).to be_valid
		end

		it "should not be valid without text" do
			subject.text = nil
			expect(subject).to_not be_valid
		end

		it "should be valid without text" do
			subject.text = "Abba"
			expect(subject).to be_valid
		end

		it "incorrect length of text" do
			subject.text = "aaaaaaabbbabababbabaaababnabanmbdnsbdmnsadbnasmdbasd"
			expect(subject).to_not be_valid
		end
	end

	describe "association" do
  		it { should belong_to (:user)}
  		it { should belong_to (:post)}
  	end
end
