class Event < ActiveRecord::Base
  belongs_to :user
  has_many :userevents
  has_many :users, through: :userevents 
  validate :event_cannot_be_in_the_past
  validates :name, presence:true


  def event_cannot_be_in_the_past
    errors.add(:date, "can't be in the past") if
      !date.blank? and date < Date.today
  end


end
