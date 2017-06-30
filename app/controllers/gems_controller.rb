class GemsController < ApplicationController
  def index
    search_term = params["gem"]["search_term"]
    @gem = Gems.info "#{search_term.downcase}"
    debugger
    dependencies = @gem['dependencies']
    @dependencies = dependencies["development"] + dependencies["runtime"]
    render :index
  end
end
