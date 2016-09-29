class EventsController < ApplicationController
  def index
    @user = User.all
    @event = Event.all
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
