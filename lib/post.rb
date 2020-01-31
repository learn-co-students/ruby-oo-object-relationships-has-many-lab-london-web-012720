class Post

    attr_reader :title, :author

    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def author=(name)
        @author = name
        @author.posts << self
    end

    def self.all
        @@all
    end

    def author_name
        @author ? @author.name : nil
    end
end