class EventsController < ApplicationController
  def index
    @user = User.find(session[:user_id])
    @all_user = User.all 
    @events = Event.all
  end

  def create
    @user = User.find(session[:user_id])
    @events = Event.all
    @event_new = Event.create(name:params[:name], date:params[:date], location:params[:location], user:User.find(session[:user_id]))
    if @event_new.valid?
      redirect_to '/events'
    else
      redirect_to '/events', :notice => @event_new.errors.full_messages
    end 
  end

  def show
  end

  def edit
  end

  def destroy
  end
end
