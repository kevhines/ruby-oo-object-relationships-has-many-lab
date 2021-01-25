require "pry"
class Post
    
    attr_accessor :title, :author

    @@all = []

    def initialize(title)
        self.title = title
        save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def author_name
        self.author.instance_of?(Author) ? self.author.name : nil
    end
end