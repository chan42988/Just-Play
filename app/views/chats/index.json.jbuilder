json.array!(@chats) do |chat|
  json.extract! chat, :id, :title, :body
  json.url chat_url(chat, format: :json)
end
