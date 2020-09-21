class User < ApplicationRecord
  has_secure_password validations: true

  def sign_in
    remember_token = User.new_remember_token
    update(remember_token: User.encrypt(remember_token))
  end

  def self.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def self.encrypt(token)
    Digest::SHA256.hexdigest(token.to_s)
  end
end
