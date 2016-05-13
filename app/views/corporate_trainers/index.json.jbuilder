json.array!(@corporate_trainers) do |corporate_trainer|
  json.extract! corporate_trainer, :id, :img, :name, :designation, :extra
  json.url corporate_trainer_url(corporate_trainer, format: :json)
end
