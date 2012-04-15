class DashboardController < ApplicationController
  def index
  end

  def plan
    @courses = Course.all
  end

  def check
  end

end
