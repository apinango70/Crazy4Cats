# == Schema Information
#
# Table name: articles
#
#  id          :bigint           not null, primary key
#  title       :string
#  description :string
#  content     :text
#  user_id     :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Article < ApplicationRecord
  # Relaciones
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :reactions, dependent: :destroy
  has_many :users, through: :reactions # or comments doesn't matter

  # Agregamos tipos de reacciones como constante.
  Kinds = %w[like dislike not_interested neutral].freeze
  KindsSpanish = { 'like' => 'Me gusta', 'dislike' => 'No me gusta', 'not_interested' => 'No me interesa',
                   'neutral' => 'Neutral' }.freeze
end
