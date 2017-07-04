class GemsController < ApplicationController
  def index
    @search_term = (params["gem"]["search_term"]).downcase
    @gem = find_gem(@search_term)
    if @gem.empty?
      flash.now[:errors] = "Oh no! Looks like that gem can't be found."
    else
      @search_term = ""
      dependencies = @gem['dependencies']
      @dependencies = dependencies["development"] + dependencies["runtime"]
    end
      render :index
  end

  private

  def find_gem(search_term)
    search_term = (params["gem"]["search_term"]).downcase
    begin
      gem = (Gems.info "#{@search_term}")
    rescue JSON::ParserError => error
      return {}
    end
    gem
  end
end
