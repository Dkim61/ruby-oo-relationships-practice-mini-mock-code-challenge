class Author_Book
    attr_accessor :author, :name
    @@all = []

    def initalize (author, name)
        @author = author
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

end
