json.array!(@holes) do |hole|
  json.extract! hole, :id, :number
  json.url hole_url(hole, format: :json)
end
