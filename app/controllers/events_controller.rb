class EventsController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @events = Event.all
  end

  def create
  end

  def show
  end

  def edit
  end

  def destroy
  end
end
