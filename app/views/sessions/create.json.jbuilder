if @result
  json.token @user.remember_token
  json.email @user.email
  json.name @user.name
else
  json.errors do
    json.array! @errors do |error|
      json.message error
    end
  end
end