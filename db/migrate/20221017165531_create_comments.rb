class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :body
      t.integer :post_id, index: true
      t.integer :user_id, index: true

      t.timestamps
    end
  end
end
