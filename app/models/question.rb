class Question < ActiveRecord::Base
  belongs_to :user
  has_many :answers
  
  validates :title, presence: true
  validates :content, presence: true
  
  # Question.create(:body => 'Hey check out this cool video: http://www.youtube.com/watch?v=WdsGihou8J4')
  
  auto_html_for :body do
    html_escape
    image
    youtube(:width => 400, :height => 250, :autoplay => false)
    link :target => "_blank", :rel => "nofollow"
    simple_format
  end
end
