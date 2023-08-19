class Reaction < ApplicationRecord
  belongs_to :article
  belongs_to :user
  belongs_to :comment
end
