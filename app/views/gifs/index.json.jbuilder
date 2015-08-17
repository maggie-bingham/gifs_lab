json.array!(@gifs) do |gif|
  json.extract! gif, :id, :url, :user_id, :title, :description
  json.url gif_url(gif, format: :json)
end
