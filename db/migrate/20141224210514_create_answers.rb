class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :user_id
      t.integer :upvotes
      t.integer :downvotes
      t.text :content
      t.string :imageurl
      t.string :producturl
      t.integer :question_id

      t.timestamps
    end
  end
end
