json.array!(@mymemos) do |mymemo|
  json.extract! mymemo, :id, :title, :body
  json.url mymemo_url(mymemo, format: :json)
end
