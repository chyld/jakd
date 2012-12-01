# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  username        :string(255)
#  password_digest :string(255)
#  avatar          :string(255)
#  balance         :decimal(, )      default(1000.0)
#  games_won       :integer          default(0)
#  games_lost      :integer          default(0)
#  amount_won      :decimal(, )      default(0.0)
#  amount_lost     :decimal(, )      default(0.0)
#  logged_in       :boolean          default(FALSE)
#  player_id       :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  belongs_to :player
  has_secure_password
  mount_uploader :avatar, AvatarUploader
  validates :username, :avatar, :presence => true
  scope :online_users, where(:logged_in => true)

  def set_login(status)
    self.logged_in = status
    self.save
  end
end
