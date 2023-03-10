class HomeController < ApplicationController
  def index
   render 
  end
  def search
    byebug
    @searcher = Searcher.where("job_role LIKE?", "%" + params[:job_role] + "%")
  end

end