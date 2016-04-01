class User < ActiveRecord::Base
  rolify

  has_many :blog_posts

  # Active Record Callbacks
  after_create :add_user_role_in_registration
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  private
  	def add_user_role_in_registration
  		self.add_role 'user'
  	end       
end
