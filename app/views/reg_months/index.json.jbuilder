json.array!(@regmonths) do |regmonth|
  json.extract! regmonth, :id, :month_id, :region_id
  json.url enrollment_url(regmonth, format: :json)
end