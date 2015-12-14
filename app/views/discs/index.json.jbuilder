json.array!(@discs) do |disc|
  json.extract! disc, :id, :brand, :name, :color, :user_id, :course_id, :hole_id, :day_lost
  json.url disc_url(disc, format: :json)
end
