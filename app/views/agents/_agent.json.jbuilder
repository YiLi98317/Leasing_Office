json.extract! agent, :id, :agent_id, :password, :name, :email, :phone_number, :created_at, :updated_at
json.url agent_url(agent, format: :json)
