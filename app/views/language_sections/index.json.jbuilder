json.array!(@language_sections) do |language_section|
  json.extract! language_section, :id, :lang_id, :section, :info
  json.url language_section_url(language_section, format: :json)
end
