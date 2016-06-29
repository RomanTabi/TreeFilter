require "rails_helper"

describe Item do
	it "has text: Nohavice" do
		item = Item.contains("Nohavice").first
		expect(item.text).to eq("Nohavice")
	end
end

describe Item do
	it "has text: Mencestraky && parentId: 4" do
		item = Item.contains("Mencestraky").first
		parent = Item.getParent(item.parentId).first

		expect(item.text).to eq("Mencestraky")
		expect(parent.myId).to eq(4)
	end
end
