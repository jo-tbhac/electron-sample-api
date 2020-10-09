class User < ApplicationRecord
  has_many :group_users
  has_many :groups, through: :group_users
  has_many :messages

  has_secure_password validations: true

  validates :email, presence: true, uniqueness: true
  validates :name, presence: true

  def sign_in
    remember_token = User.new_remember_token
    update(remember_token: User.encrypt(remember_token))
  end

  def self.search(keyword)
    User.where('name LIKE ?', "%#{keyword}%")
  end

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA256.hexdigest(token.to_s)
  end
end
