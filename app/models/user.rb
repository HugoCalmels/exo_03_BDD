class User < ApplicationRecord
  belongs_to :city
    has_many :likes
    has_many :gossips
    has_many :commentaires
    has_many :senders
    has_many :receivers
end
