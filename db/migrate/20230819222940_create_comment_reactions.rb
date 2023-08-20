class CreateCommentReactions < ActiveRecord::Migration[7.0]
  def change
    create_table :comment_reactions do |t|
      t.references :comment, null: false, foreign_key: true
      t.references :reaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
