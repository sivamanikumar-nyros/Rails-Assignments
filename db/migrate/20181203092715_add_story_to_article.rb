class AddStoryToArticle < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :story, :text
  end
end
