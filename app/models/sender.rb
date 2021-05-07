class Sender < ApplicationRecord
  belongs_to :user
    has_many :privatemessages
end
