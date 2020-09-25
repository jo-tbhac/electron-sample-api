if @group.errors.empty?
  json.group @group
else
  json.errors do
    json.array! @group.errors.full_messages do |message|
      json.message message
    end
  end
end
