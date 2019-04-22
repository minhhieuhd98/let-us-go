class User < ApplicationRecord
  has_many :attendances
  has_many :events, through: :attendances
  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?
  scope :by_role, -> {where role: "admin" }
  has_one_attached :avatar

  def set_default_role
    self.role ||= :user
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, 
         :omniauthable, omniauth_providers: %i[google_oauth2]

  def self.from_omniauth(auth)
    user = where(uid: auth.info["email"]).first
    return nil if user.present?
    User.create(
                refresh_token: auth.credentials.refresh_token,
                token: auth.credentials.token,
                expires_at: Time.at(auth.credentials.expires_at),
                uid: auth.uid,
                email: "#{auth.uid}@gmail.com",
                user_id: user.id,
                name: name,
                google_app_id: google_app_id,
                channel_id: channel_id
              )

  end
end
