require "rails_helper"

RSpec.describe Post, :type => :model do

  let!(:category){create(:category)}
  subject{
		build(:post)
	}

	describe "validation" do

		it "should not be valid without name" do
			subject.name = nil
			expect(subject).to_not be_valid
		end

    it "should be valid without name" do
			subject.name = "Cars"
			expect(subject).to be_valid
		end

  end


  	describe "association" do
  		it { should belong_to(:category)}
  	end

end
