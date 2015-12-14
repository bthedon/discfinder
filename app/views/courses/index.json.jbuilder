json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :slug
  json.url course_url(course, format: :json)
end
