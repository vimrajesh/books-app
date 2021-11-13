class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.integer :B_id , unique: true, null: false
      t.text :B_title, null: false
      t.text :Author, null: false
      t.text :Publisher, null: false
      t.integer :Year, null: false

      t.timestamps
    end
  end
end
