require "pry"

class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
    @@all << self
    end

    def self.all
        @@all
    end

    def posts
        Post.all.each {|s|s.author == self}
    end

    def add_post(post)
        post.author = self
        @@all << self
      end

      def add_post_by_title(title)
        p = Post.new(title)
        add_post(p)

        @@all << self
      end

      def self.post_count
        Post.all.map {|p|p.author}.size
      end


end
