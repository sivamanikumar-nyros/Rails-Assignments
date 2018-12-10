class RemoveArticleIdFromReview < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :article_id, :integer
  end
end
