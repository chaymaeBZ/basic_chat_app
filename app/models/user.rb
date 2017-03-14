class User < ApplicationRecord
  has_many :messages
  attr_accessor :is_online
  NAME_REGEX = /\w+/
  validates :username, presence: true, uniqueness: { case_sensitive: false },
                       format: { with: /\A#{NAME_REGEX}\z/i },
                       length: { maximum: 15 }
  validates :password, presence: true, length: { minimum: 6 }
  has_secure_password
  def is_online
    @is_online || false
  end
end
