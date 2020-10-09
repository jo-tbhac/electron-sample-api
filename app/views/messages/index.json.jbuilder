json.messages do
  json.array! @messages do |message|
    json.id message.id
    json.body message.body
    json.created_at message.created_at
    json.user do
      json.id message.user.id
      json.name message.user.name
    end
  end
end
