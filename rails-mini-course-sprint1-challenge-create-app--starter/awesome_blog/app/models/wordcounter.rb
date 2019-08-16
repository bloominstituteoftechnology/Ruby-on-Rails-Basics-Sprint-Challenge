module WordCounter
  def word_count
    if body.nil?
      return 0
    end
    body.split(' ').count
  end
end