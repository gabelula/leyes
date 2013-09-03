json.array!(@leys) do |ley|
  json.extract! ley, :numero, :fecha, :titulo, :texto, :legislatura
  json.url ley_url(ley, format: :json)
end
