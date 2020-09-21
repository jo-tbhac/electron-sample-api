if @result
  json.user @user
else
  json.errors do
    json.array! @user.errors.full_messages do |message|
      json.message message
    end
  end
end