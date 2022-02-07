json.extract! admin, :id, :password_digest, :name, :email, :phone_number, :string, :created_at, :updated_at
json.url admin_url(admin, format: :json)
