require 'wordcounter.rb'

class Post < ApplicationRecord
    include WordCounter
end
