require 'wordcounter'
class Post < ApplicationRecord
  include WordCounter
  include Publishable
end
