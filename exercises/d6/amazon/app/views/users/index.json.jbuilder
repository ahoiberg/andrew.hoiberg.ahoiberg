json.array!(@users) do |user|
  json.extract! user, :id, :name, :payment_info, :shipping_info
  json.url user_url(user, format: :json)
end
