class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :user_first_name
      t.string :user_last_name
      t.text :description
      t.string :email
      t.integer :age
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
