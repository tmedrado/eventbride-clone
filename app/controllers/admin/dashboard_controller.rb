class Admin::DashboardController < ApplicationController
  
  def index
    @event = Event.all
    @user = User.all
  end

end
