json.array!(@course_holes) do |course_hole|
  json.extract! course_hole, :id, :course_id, :hole_id, :terrain
  json.url course_hole_url(course_hole, format: :json)
end
