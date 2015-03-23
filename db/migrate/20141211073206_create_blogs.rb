class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.integer :user_id
      t.text :name
      t.text :text

      t.timestamps
    end
  end
end
