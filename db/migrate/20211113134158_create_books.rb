class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.integer :B_id
      t.text :B_title
      t.text :Author
      t.text :Publisher
      t.integer :Year

      t.timestamps
    end
  end
end
