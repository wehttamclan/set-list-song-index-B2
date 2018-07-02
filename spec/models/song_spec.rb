RSpec.describe Song do
  describe 'Validations' do
    it 'is invalid without a title' do
      song = Song.new(length: 123, play_count: 234)

      expect(song).to_not be_valid
    end

    it 'is invalid without a length' do
      song = Song.new(title: "some string", play_count: 234)

      expect(song).to_not be_valid
    end
  end

  describe 'Class methods' do
    describe ".total_play_count" do
      it "returns total play counts for all songs" do
        Song.create(title: "Song 1", length: 180, play_count: 3)
        Song.create(title: "Song 2", length: 220, play_count: 4)

        expect(Song.total_play_count).to eq(7)
      end

      it 'returns average play count for all songs' do
        Song.create(title: "Song 1", length: 180, play_count: 3)
        Song.create(title: "Song 2", length: 220, play_count: 4)
        Song.create(title: "Song 3", length: 220, play_count: 5)

        expect(Song.average_play_count).to eq(4)
      end
    end
  end
end
