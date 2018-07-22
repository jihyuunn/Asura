json.extract! fortune, :id, :title, :rating, :image, :description, :created_at, :updated_at
json.url fortune_url(fortune, format: :json)
