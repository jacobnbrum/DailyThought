json.array!(@bloggs) do |blogg|
  json.extract! blogg, :id, :title, :notes
  json.url blogg_url(blogg, format: :json)
end
