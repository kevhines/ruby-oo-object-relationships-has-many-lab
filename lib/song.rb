class Song

    attr_accessor :name, :artist
    @@all = []

    def initialize(title)
        self.name = title
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        self.artist.instance_of?(Artist) ? self.artist.name : nil
    end

end