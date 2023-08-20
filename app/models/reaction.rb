# == Schema Information
#
# Table name: reactions
#
#  id            :bigint           not null, primary key
#  article_id    :bigint           not null
#  user_id       :bigint           not null
#  kind          :string
#  reaction_type :string
#  comment_id    :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
class Reaction < ApplicationRecord
  belongs_to :article, optional: true
  belongs_to :user
  belongs_to :comment, optional: true
end
