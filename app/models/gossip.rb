class Gossip < ApplicationRecord
  belongs_to :user
    belongs_to :tag
    belongs_to :like
    has_many :commentaires
    has_many :tags
end
