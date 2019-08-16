module WordCounter
    def word_count
        if text.nil?
            return 0
        end
        text.split(',').count
end