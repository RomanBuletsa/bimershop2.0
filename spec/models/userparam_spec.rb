require "rails_helper"

RSpec.describe Userparam, :type => :model do

	subject{
		build(:userparam)
	}

	describe "validation" do
 		it "is valid with valid atributes" do
 			expect(subject).to be_valid
		end

		it "should not be valid without firstname" do
			subject.firstname = nil
			expect(subject).to_not be_valid
		end

		it "should not be valid without lastname" do
			subject.lastname = nil
			expect(subject).to_not be_valid
		end

    it "should not be valid without phone" do
			subject.phone = nil
			expect(subject).to_not be_valid
		end

    it "incorrect length of phone" do
      subject.phone = "+38012345678"
      expect(subject).to_not be_valid
    end

		it "should be valid without firstname" do
			subject.firstname = "Tester"
			expect(subject).to be_valid
		end

		it "should be valid without lastname" do
			subject.lastname = "Tester"
			expect(subject).to be_valid
		end

    it "should be valid without phone" do
      subject.phone = "+380123456789"
      expect(subject).to be_valid
    end

  	end

  	describe "association" do
  		it { should belong_to(:user)}
  	end
end
