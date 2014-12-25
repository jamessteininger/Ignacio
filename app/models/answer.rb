class Answer < ActiveRecord::Base
  belongs_to :question
  
  validates :body, presence: true
  validates :question_id, presence: true
  validates :user_id, presence: true
  
  auto_html_for :body do
    html_escape
    image
    youtube(:width => 400, :height => 250, :autoplay => false)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
end
