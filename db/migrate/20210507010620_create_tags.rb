class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :tag_title_name
      t.belongs_to :gossip, index: true

      t.timestamps
    end
  end
end
