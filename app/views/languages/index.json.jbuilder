json.array!(@languages) do |language|
  json.extract! language, :id, :name, :about
  json.url language_url(language, format: :json)
end
