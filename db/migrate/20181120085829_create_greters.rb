class CreateGreters < ActiveRecord::Migration[5.2]
  def change
    create_table :greters do |t|
      t.string :name

      t.timestamps
    end
  end
end
