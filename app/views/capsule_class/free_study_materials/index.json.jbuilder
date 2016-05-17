json.array!(@capsule_class_free_study_materials) do |capsule_class_free_study_material|
  json.extract! capsule_class_free_study_material, :id, :title, :pdf
  json.url capsule_class_free_study_material_url(capsule_class_free_study_material, format: :json)
end
