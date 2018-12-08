class CreateCheckouts < ActiveRecord::Migration[5.2]
  def change
    create_table :checkouts do |t|
      t.integer :user_id
      t.integer :article_id
      t.boolean :checkbox

      t.timestamps
    end
  end
end
