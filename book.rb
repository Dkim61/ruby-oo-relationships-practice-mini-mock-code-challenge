class Book
    attr_accessor :title, :author, :word_count
    @@all = []
    def initialize(title, author, word_count)
        @title = title
        @author = author
        #holds a reference to the "to many (which is the author in this case"
        @word_count = wordcount
        @@all << self
    end

    def self.all
        @@all
    end

    def author_book
        Author_Book.all.select {|Author_Book_Instance| Author_Book_Instance.name == self}
    end

    

