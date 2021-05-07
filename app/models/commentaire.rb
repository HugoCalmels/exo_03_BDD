class Commentaire < ApplicationRecord
  belongs_to :gossip
    belongs_to :user
end
