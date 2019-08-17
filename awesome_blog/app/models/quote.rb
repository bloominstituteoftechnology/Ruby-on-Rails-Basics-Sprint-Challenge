require 'wordcounter.rb'

class Quote < ApplicationRecord
    include WordCounter
end
