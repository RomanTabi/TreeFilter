require 'rails_helper'

# Hladanie retazca 'ce'
# Ocakavany vysledok:
	# Rukavice
	# Oblecenie
	# Nohavice
	# Mencestraky
	# Topanky
	# Papuce
RSpec.describe "SearchStrings", type: :request do
  it "search sting in db" do
  	visit "/main/index"
  	fill_in "string", with: "ce"
  	click_button "Search"

  	content = ["Rukavice Oblecenie Nohavice Mencestraky Topanky Papuce"]

  	actual_content = all('div.tree').map(&:text)
  	expect(actual_content).to eq(content)
  end
end

# Hladanie retazca 'Tricka'
# Ocakavany vysledok:
	# Oblecenie
	# Tricka
RSpec.describe "SearchStrings_2", type: :request do
  it "search sting in db" do
  	visit "/main/index"
  	fill_in "string", with: "Tricka"
  	click_button "Search"

  	content = ["Oblecenie Tricka"]

  	actual_content = all('div.tree').map(&:text)
  	expect(actual_content).to eq(content)
  end
end

# Hladanie prazdneho retazca
# Ocakavany vysledok:
	# Prislusenstvo
	# Rukavice
	# Oblecenie
	# Nohavice
	# Rifle
	# Mencestraky
	# Tricka
	# Topanky
	# Tenisky
	# Papuce
RSpec.describe "SearchStrings_3", type: :request do
  it "search sting in db" do
  	visit "/main/index"
  	fill_in "string", with: ""
  	click_button "Search"

  	content = ["Prislusenstvo Rukavice Oblecenie Nohavice Rifle Mencestraky Tricka Topanky Tenisky Papuce"]

  	actual_content = all('div.tree').map(&:text)
  	expect(actual_content).to eq(content)
  end
end

# Hladanie retazca " "
# Ocakavany vysledok:
	
RSpec.describe "SearchStrings_4", type: :request do
  it "search sting in db" do
  	visit "/main/index"
  	fill_in "string", with: " "
  	click_button "Search"

  	content = [""]

  	actual_content = all('div.tree').map(&:text)
  	expect(actual_content).to eq(content)
  end
end

# Hladanie retazca "654"
# Ocakavany vysledok:
	
RSpec.describe "SearchStrings_5", type: :request do
  it "search sting in db" do
  	visit "/main/index"
  	fill_in "string", with: "654"
  	click_button "Search"

  	content = [""]

  	actual_content = all('div.tree').map(&:text)
  	expect(actual_content).to eq(content)
  end
end
