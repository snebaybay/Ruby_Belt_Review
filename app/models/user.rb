class User < ActiveRecord::Base
  has_secure_password
  has_many :invites, :through => :userevents
  has_many :userevents, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :events

  email_regex = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  alphabet = /\A[a-zA-Z]+\z/
  validates :email, :presence => true, :format => { :with => email_regex }, :uniqueness => { :case_sensitive => false }
  validates :first_name, :last_name, :presence => true, :format => {:with => alphabet }
end
