json.extract! chapter, :id, :title, :chapter_body, :place, :is_public, :created_at, :updated_at
json.url chapter_url(chapter, format: :json)
