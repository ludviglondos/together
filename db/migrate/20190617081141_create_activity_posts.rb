class CreateActivityPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_posts do |t|
      t.string :description
      t.datetime :start_time
      t.integer :duration
      t.integer :capacity
      t.string :location, default: 'Hubhult'
      t.string :title
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
