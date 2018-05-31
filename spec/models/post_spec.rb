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

    it "should not be valid without year" do
			subject.year = nil
			expect(subject).to_not be_valid
		end

    it "should not be valid without price" do
			subject.price = nil
			expect(subject).to_not be_valid
		end

    it "should not be valid without ks" do
			subject.ks = nil
			expect(subject).to_not be_valid
		end

    it "should not be valid without privod" do
      subject.privod = nil
      expect(subject).to_not be_valid
    end

    it "should not be valid without kuzov" do
			subject.kuzov = nil
			expect(subject).to_not be_valid
		end

    it "should be valid without name" do
			subject.name = "Cars"
			expect(subject).to be_valid
		end

    it "should be valid without year" do
      subject.year = 2018
      expect(subject).to be_valid
    end

    it "should be valid without price" do
      subject.price = 80000
      expect(subject).to be_valid
    end

    it "should be valid without ks" do
      subject.ks = 650
      expect(subject).to be_valid
    end

    it "should be valid without privod" do
      subject.privod = "4x4"
      expect(subject).to be_valid
    end

    it "should be valid without kuzov" do
      subject.kuzov = "Kuzov"
      expect(subject).to be_valid
    end

  end


  	describe "association" do
  		it { should belong_to(:category)}
  	end

end
