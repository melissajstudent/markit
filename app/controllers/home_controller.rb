class HomeController < ApplicationController
  skip_before_filter :authenticate_user!
  
  def index
    @topics = Topic.all
  end
end
