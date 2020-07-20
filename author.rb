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

    def books
        Book.all.select {|book| book.author == self}
    end

    def write_book(title, word_count)
        Book.new(title, self, word_count)
    end

    def total_words
        total_words = 0
        books.map do |book|
           total_words << book.word_count
        end
        total_words
    end


    def self.most_words
        most_words = 0
        books.each do |book|
            if book.word_count > most_words
                most_words = book.word_count
            end
        end
        most_words
    end

