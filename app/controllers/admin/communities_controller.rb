module Admin
  class CommunitiesController < AdminController
    def show
      redirect_to :action => :index
    end
  end
end