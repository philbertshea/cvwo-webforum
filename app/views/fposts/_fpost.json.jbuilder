json.extract! fpost, :id, :post_title, :post_text, :post_datetime, :post_user_id, :created_at, :updated_at
json.url fpost_url(fpost, format: :json)
