RSpec.describe 'a visitor' do
  context 'visiting /' do
    it 'should show a welcome message' do

      visit '/'

      within("#greeting") do
        expect(page).to have_content("Welcome!")
      end
    end
  end
  context 'visiting /songs' do
    it 'should show a list of all songs' do
      Song.create(title: "Float On", length: 208, play_count: 78900)
      Song.create(title: "Thriller", length: 357, play_count: 87030)
      Song.create(title: "I Wanna Dance With Somebody", length: 149, play_count: 60438)
      Song.create(title: "Firework", length: 205, play_count: 38760)

      visit '/songs'
save_and_open_page
      within("##{song.title}") do
        expect(page).to have_content("Welcome!")
      end
    end
  end
end
