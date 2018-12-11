class AddArticleRefToCheckouts < ActiveRecord::Migration[5.2]
  def change
    add_reference :checkouts, :article, foreign_key: true
  end
end
