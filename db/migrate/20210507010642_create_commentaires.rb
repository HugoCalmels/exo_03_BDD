class CreateCommentaires < ActiveRecord::Migration[5.2]
  def change
    create_table :commentaires do |t|
      t.text :comment_content
      t.belongs_to :gossip, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
