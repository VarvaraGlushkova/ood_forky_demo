json.extract! user, :id, :is_admin, :user_name, :bio, :avatar, :mail, :is_mail_public, :phone, :is_phone_piblic, :Chapter_id, :Story_id, :Collection_id, :Subs_id, :Like_id, :Comment_id, :created_at, :updated_at
json.url user_url(user, format: :json)
