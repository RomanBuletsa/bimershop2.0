require 'rails_helper'

RSpec.describe Category, type: :model do
	subject{
		build(:category)
	}

	describe "association" do
  		it { should have_many(:posts)}
  	end
end
