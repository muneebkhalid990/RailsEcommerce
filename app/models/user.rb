class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable,
         :validatable

  # validates :username, presence: true
  # validates :email, presence: true, uniqueness: true

  # validates_presence_of     :email # required
  # validates_uniqueness_of   :email # required
  # validates_presence_of     :username # required
  # validates_uniqueness_of   :username # required
  # validates_presence_of     :password #reqiured
  # validates_confirmation_of :password # recommended
  # validates_length_of       :password, within: password_length, allow_blank: true # recommended

  has_many :order
  has_many :products


  enum role: [:brand, :client] 

  before_create :here

  def here
    

  end
end
