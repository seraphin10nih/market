json.extract! shirt, :id, :title, :description, :price, :image_url, :created_at, :updated_at
json.url shirt_url(shirt, format: :json)
