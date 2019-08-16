require './app/models/appstats'
class AppstatsController < ApplicationController
  before_action :set_stats, only: [:index]

  # GET /appstats
  # GET /appstats.json
  def index
  end
 
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_stats
    @stats = AppStats.new(Post.all, Quote.all)
  end


end
