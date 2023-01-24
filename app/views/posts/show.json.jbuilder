json.set! :post do
  json.set! :id, @post.id
  json.set! :title, @post.title
  json.set! :description, @post.description
  json.set!  :description, @post.available
  json.set! :published_at, @post.published_at
end