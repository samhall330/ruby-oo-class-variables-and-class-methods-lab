class Song

    @@count = 0
    @@genres = []
    @@artists =[]
   

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres << genre
        @@artists << artist
       

    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genre_count = {}
        @@genre_count[@genre] << @@genres.count
       
    end

    def self.artist_count
        @@artist_count = {}

    end

end