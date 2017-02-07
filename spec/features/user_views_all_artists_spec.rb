require 'rails_helper'

RSpec.feature "User visits the artists index" do
  scenario "they should see each artist's name" do
    artist_1 = Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    artist_2 = Artist.create(name: "Tom Petty", image_path: "https://pbs.twimg.com/profile_images/3129773391/b04fd9aab2eccaac649fb64d12fb27ad_400x400.jpeg")

    visit '/artists'

    expect(page).to have_link "Bob Marley", href: artist_path(artist_1)
    expect(page).to have_link "Tom Petty", href: artist_path(artist_2)
  end
end
