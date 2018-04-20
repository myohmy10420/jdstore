class User < ApplicationRecord
  devise :omniauthable, omniauth_providers: [:google_oauth2]
  has_many :orders
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable

  def admin?
    self.is_admin
  end

  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(:email => data["email"]).first

    unless user
      password = Devise.friendly_token[0,20]
      user = User.create(email: data["email"],
                         password: password, password_confirmation: password
                         )
    end
    user
  end
end
