class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :masqueradable,
         :recoverable, :rememberable, :validatable, :trackable

  has_many :projects
  has_many :worklogs
end
