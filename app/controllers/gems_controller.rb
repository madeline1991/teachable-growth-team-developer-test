class GemsController < ApplicationController
  def index
    @search_term = (params["gem"]["search_term"]).downcase
    @gem = find_gem(@search_term)
    if @gem.empty?
      flash.now[:errors] = "Oh no! Looks like that gem can't be found."
    else
      @search_term = ""
      @gem = @gem[0]
      dependencies = @gem['dependencies']
      @dependencies = dependencies["development"] + dependencies["runtime"]
    end
      render :index
  end

  private

  def find_gem(search_term)
    search_term = (params["gem"]["search_term"]).downcase
    gems = Gems.search "#{@search_term}"
    gems.select { |gem| gem["name"] == search_term }
  end
  # def index
  #   search_term = params["gem"]["search_term"]
  #   if Gems.search "#{search_term.downcase}"
  #     @gem = Gems.search "#{search_term.downcase}"
  #         debugger
  #     dependencies = @gem['dependencies']
  #     @dependencies = dependencies["development"] + dependencies["runtime"]
  #     render :index
  #   else
  #     redirect_to root_url
  #   end
  # end
end
