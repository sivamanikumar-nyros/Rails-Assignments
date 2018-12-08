class AddDoornumberToAddress < ActiveRecord::Migration[5.2]
  def change
    add_column :addresses, :doornumber, :string
  end
end
