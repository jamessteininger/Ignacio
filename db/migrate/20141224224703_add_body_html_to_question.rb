class AddBodyHtmlToQuestion < ActiveRecord::Migration
  def change
    add_column :questions, :body_html, :text
  end
end
