class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :parent_id
      t.string :title, null: false, default: ''
      t.text :content, null: false, default: ''

      t.timestamps
    end

    add_index :comments, :parent_id
  end
end
