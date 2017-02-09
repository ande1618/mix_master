require 'rails_helper'

RSpec.describe PlaylistsController, type: :controller do
  describe "POST #create" do
    it "creates a new playlist" do
      expect {
        post :create, {:playlist => attributes_for(:playlist)}
      }.to change(Playlist, :count).by(1)
    end
    it "assigns a newly created playlist as @playlist" do
      post :create, {:playlist => attributes_for(:playlist)}
      expect(assigns(:playlist)).to be_a(Playlist)
      expect(assigns(:playlist)).to be_persisted
    end

    it "redirects to the created playlist" do
      post :create, {:playlist => attributes_for(:playlist)}
      expect(response).to redirect_to(Playlist.last)
    end
  end

  describe "PUT #update" do
    it "updates a playlist" do
      
    end
  end

end
