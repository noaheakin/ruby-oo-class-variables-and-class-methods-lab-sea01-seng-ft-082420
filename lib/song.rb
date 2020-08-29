class Song

    attr_reader :name, :artist, :genre

    @@artists = []
    @@genres = []
    @@count = 0

    def initialize (name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
        
    end

    def Song.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def Song.genre_count
        @@genres.each_with_object(Hash.new(0)) {|element, hash| hash[element] += 1} 
    end

    def Song.artist_count
        @@artists.each_with_object(Hash.new(0)) {|element, hash| hash[element] += 1}
    end
end