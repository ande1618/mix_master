require 'rails_helper'

RSpec.feature "user edits a playlist" do
  xscenario "they see the page for the individual playlist" do

    song_one, song_two, song_three = create_list(:song, 3)
    playlist1 = create(:playlist)
    # playlist_name = "My Jams"

    visit playlist_path(playlist1)
    click_on "Edit"
    fill_in "playlist_name", with: "Running"
    check("song-#{song_one.id}")
    check("song-#{song_three.id}")
    click_on "Update Playlist"

    within("h1") do
      expect(page).to_not have_content playlist_name
      expect(page).to have_content "Running"
    end

    within("li:first") do
      expect(page).to have_link song_one.title, href: song_path(song_one)
    end

    within("li:last") do
      expect(page).to have_link song_three.title, href: song_path(song_three)
    end
  end
end
