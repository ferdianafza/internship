class Student < ApplicationRecord
  has_many :reports
  has_many :presences
  has_one_attached :avatar

  belongs_to :major
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
