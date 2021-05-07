class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :gossip_title_name
      t.text :gossip_content
      t.belongs_to :user, index: true
      t.belongs_to :tag, index: true
      t.belongs_to :like, index: true

      t.timestamps
    end
  end
end
