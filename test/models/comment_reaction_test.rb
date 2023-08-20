# == Schema Information
#
# Table name: comment_reactions
#
#  id          :bigint           not null, primary key
#  comment_id  :bigint           not null
#  reaction_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class CommentReactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
