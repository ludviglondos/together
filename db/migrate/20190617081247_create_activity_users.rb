class CreateActivityUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_users do |t|
      t.references :activity_post, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
