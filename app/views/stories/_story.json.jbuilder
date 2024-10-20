json.extract! story, :id, :title, :cover, :annotation, :is_public, :created_at, :updated_at
json.url story_url(story, format: :json)
