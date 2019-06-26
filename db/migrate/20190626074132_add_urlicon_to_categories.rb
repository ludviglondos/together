class AddUrliconToCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :url_icon, :string
  end
end
