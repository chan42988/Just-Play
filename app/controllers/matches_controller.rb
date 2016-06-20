class MatchesController < ApplicationController
  def new
      @match = Match.new
  end
  
  def create
  		@match = Match.new
        if match.save
          session[:match_id] = match.id
          redirect_to '/matches/new'
        else
          redirect_to '/signup'
        end
  end
  
end
