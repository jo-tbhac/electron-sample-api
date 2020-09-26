if @result
  json.name @user.name
  json.email @user.email
  json.token @user.remember_token
else
  json.errors do
    json.array! @user.errors.full_messages do |message|
      json.message message
    end
  end
end
