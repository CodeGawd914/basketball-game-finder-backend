class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :wins, :losses, :stats, :last_game, :avatar

  has_many :teams
end
