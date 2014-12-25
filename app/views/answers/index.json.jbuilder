json.array!(@answers) do |answer|
  json.extract! answer, :id, :user_id, :upvotes, :downvotes, :content, :imageurl, :producturl, :question_id
  json.url answer_url(answer, format: :json)
end
