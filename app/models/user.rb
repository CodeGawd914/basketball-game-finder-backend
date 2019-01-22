class User < ApplicationRecord
  has_secure_password
  has_many :users_teams
  has_many :teams, through: :users_teams
  # validates :username, uniqueness: { case_sensitive: false }



  def record
    "W: #{self.wins} - L: #{self.losses}"
  end
end
