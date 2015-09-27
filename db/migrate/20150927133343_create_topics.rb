class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :heading
      t.integer :category_id
      t.text :content
      t.integer :like
      t.integer :dislike
      t.string :topic_pic
      t.timestamps
    end
  end
end
