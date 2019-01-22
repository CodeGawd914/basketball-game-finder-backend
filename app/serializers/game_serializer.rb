class GameSerializer < ActiveModel::Serializer
  attributes :id, :time

  has_many :teams
  belongs_to :location
end
