json.array!(@tweet­s) do |tweet­|
  json.extract! tweet­, :id, :status, :zombie_id
  json.url tweet­_url(tweet­, format: :json)
end
