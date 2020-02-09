class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.string :title
      t.integer :categories_id

      t.timestamps
    end
  end
end
