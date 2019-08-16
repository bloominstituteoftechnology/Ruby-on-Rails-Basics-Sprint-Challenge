require "publishable/version"

#`publish`, `unpublish` and `pubished?` 
module Publishable
  # class Error < StandardError; end
  def publish
    update(published_at: Time.now)

  end

  def unpublish
    update(published_at: nil)
  end

  def published?
    not published_at.nil?
  end 
end
