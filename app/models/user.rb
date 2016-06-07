class User < ActiveRecord::Base
  has_many :lists
  has_many :tasks, through: :lists

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable
end
