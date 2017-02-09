require 'rails_helper'

RSpec.feature "User visits the artists show page" do
  scenario "User clicks on 'Delete' button" do
    # artist_1 = Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    artist_1 = create(:artist)
    
    visit artist_path(artist_1)
    click_on "Delete"

    expect(page).to_not have_content artist_1
  end
end
