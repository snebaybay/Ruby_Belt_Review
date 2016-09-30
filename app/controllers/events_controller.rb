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

  def show #need to finish (especially count and comment)
    @events = Event.find(params[:id])
    @user = User.find(session[:user_id])
    @all_user = User.all 
    # @count = @events.group(:user_id).count

  end 

  def edit
    @events = Event.find(params[:id])
    @attendees = Userevent.where(user_id:params[:user_id])
  end

  def update #need to finish
    redirect_to '/events'
  end 

  def destroy #need to finish
  end
end
