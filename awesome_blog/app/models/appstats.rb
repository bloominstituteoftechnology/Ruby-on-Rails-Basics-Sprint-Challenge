class AppStats
    attr_reader :posts, :quotes
    def initialize(posts, quotes)
    @posts = Posts
    @quotes = Quotes
    end

    # returns number of posts
    def posts_count
        @posts.count
    end

    # returns number of quotes
    def quotes_count
        @quotes.count
    end

    # returns the word count of all posts in one sum
    def posts_word_count
        @posts.reduce(0) { | post, num | post + num.word_count }
    end

    # returns the word count of all quotes in one sum
    def quotes_word_count
        @quotes.reduce(0) { | quote, num| quote + num.word_count }
    end

    # return total number of posts and quotes
    def total_count
        @posts.count + @quotes.count
    end

    # return total number words within the posts and quotes
    def total_word_count
        posts_word_count + quotes_word_count
    end

end