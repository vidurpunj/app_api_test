json.array! @posts.each do |post|
  json.id post.id
  json.title post.title
  json.description post.description
  json.available post.available
  json.published_at post.published_at
end