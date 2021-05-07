class Tag < ApplicationRecord
  belongs_to :gossip
    has_many :gossips
end
