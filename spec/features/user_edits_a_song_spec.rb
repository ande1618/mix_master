require 'rails_helper'

RSpec.feature "User edits a song" do
  scenario "they see the page for the individual song" do
    artist = create(:artist)

    old_song_title = "One Love"
    song_title = "Could You Be Loved"

    visit artist_path(artist)
    click_on "Edit"
    fill_in "song_title", with: song_title
    click_on "Update Song"

    expect(page).to have_content song_title
    expect(page).to_not have_content old_song_title
    expect(page).to have_link artist.name, href: artist_path(artist)
  end
end
