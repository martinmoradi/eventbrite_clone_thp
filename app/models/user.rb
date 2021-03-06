class User < ApplicationRecord
  has_many :event_admins, foreign_key: 'event_admin_id', class_name: 'Event', dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :events, through: :attendances, dependent: :destroy

  validates :email,
            format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: 'Email is invalid' },
            uniqueness: { case_sensitive: false },
            length: { minimum: 4, maximum: 254 }
  validates :first_name, presence: true
  validates :last_name, presence: true
end
