class CreatePrivatemessages < ActiveRecord::Migration[5.2]
  def change
    create_table :privatemessages do |t|
      t.text :private_message_content
      t.belongs_to :sender, index: true
      t.belongs_to :receiver, index: true

      t.timestamps
    end
  end
end
