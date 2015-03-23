class User < ActiveRecord::Base
  has_one :bloge
  has_one :blog
  has_many :posts
  has_many :microposts
    devise :omniauthable, :omniauth_providers => [:facebook, :google_oauth2]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable   
end
