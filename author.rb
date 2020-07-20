class Author
    attr_accessor :total_words, :most_words
    attr_reader :name  
    @@all
    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def author_book
        Author_Book.all.select {|Author_Book_Instance| Author_Book_Instance.author == self}
    end

    def books
        author_book.map do |Author_Book_Instance|
            Author_Book_Instance.book
        end
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def self.most_words
        words = 0
        author_book.each do |Author_Book_Instance|
            if Author_Book_Instance.word_count > words
                words = author_book.word_count
            end
        end

end
