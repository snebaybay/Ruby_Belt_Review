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
    @user = User.find(session[:user_id])
    @events = Event.find(params[:id])
    @all_user = User.all 
    @user_event = Userevent.where(event_id:@events)
    @comments = Comment.all

  end 

  def edit
    @events = Event.find(params[:id])
    @attendees = Userevent.where(user_id:params[:user_id])
  end

  def update #need to finish
    redirect_to '/events'
  end 

  def join
    @user = User.find(session[:user_id])
    @events = Event.find(params[:id])
    @new = Userevent.create(user_id:@user.id, event_id:@events.id)
    redirect_to '/events' 
  end 

  def destroy 
    Event.find(params[:id]).destroy
    redirect_to '/events'

  end

  def create_comment
    Comment.create(user_id:User.find(session[:user_id]), event_id:Event.find(params[:id]), message:params[:comment])
    redirect_to '/events/<%=event.id%>' 
  end 
end
