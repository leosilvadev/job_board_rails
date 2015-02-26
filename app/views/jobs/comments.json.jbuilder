json.array!(@comments) do |comment|
  json.extract! comment, :id, :name, :body
end
