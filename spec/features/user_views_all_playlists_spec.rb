require 'rails_helper'

RSpec.feature "User visits the playlist index" do
  scenario "they should see each playlist's name" do
    # artist_1 = Artist.create(name: "Bob Marley", image_path: "http://cps-static.rovicorp.com/3/JPG_400/MI0003/146/MI0003146038.jpg")
    # artist_2 = Artist.create(name: "Tom Petty", image_path: "https://pbs.twimg.com/profile_images/3129773391/b04fd9aab2eccaac649fb64d12fb27ad_400x400.jpeg")
    playlist_1 = create(:playlist)
    playlist_2 = create(:playlist)
    visit '/playlists'

    expect(page).to have_link playlist_1.name, href: playlist_path(playlist_1)
    expect(page).to have_link playlist_2.name, href: playlist_path(playlist_2)
  end
end
