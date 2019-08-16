module WordCounter
    def word_count
        # check is the string is empty
        if body.nil?
            return 0
        end
        # else split into array and count it
        body.split(',').count
end