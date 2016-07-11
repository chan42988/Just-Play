class MatchesController < ApplicationController
  def new
      @match = Match.new
  end

  def show
    
  end
  
  def create
  		@match = Match.new
        if @match.save
          session[:match_id] = @match.id
          redirect_to '/matches'
        else
          redirect_to '/locations'
        end
  end
  
end
