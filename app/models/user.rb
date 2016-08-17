class User < ActiveRecord::Base
  has_many :lists
  has_many :tasks, through: :lists

  validates_presence_of :first_name, :last_name

  # email, password, and password_confirmation are validated by Devise

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable, :timeoutable

  def name
    first_name + " " + last_name
  end

end
