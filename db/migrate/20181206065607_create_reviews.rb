class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :article_id
      t.string :reviewer_name
      t.text :content
      t.integer :rating

      t.timestamps
    end
  end
end
