require 'rails_helper'

RSpec.describe Advertisement, type: :model do

	let(:ads) {Advertisement.create!(title: "ads title", body: "ads body", price: "$120") }

	describe "attributes" do 
		it "has title, body and price attributes" do 
			expect(ads).to have_attributes(title: "ads title", body: "ads body", price: "$120")
		end
	end

end
