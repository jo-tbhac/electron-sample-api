if @message.errors.empty?
  json.message @message
else
  json.errors do
    json.array! @message.errors.full_messages do |error|
      json.message error
    end
  end
end
