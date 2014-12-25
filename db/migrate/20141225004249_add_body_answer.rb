class AddBodyAnswer < ActiveRecord::Migration
  def change
    add_column :answers, :body, :text
    add_column :answers, :body_html, :text
    add_column :users, :image, :text
    add_column :users, :image_html, :text
  end
end
