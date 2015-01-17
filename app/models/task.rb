class Task
  include Her::Model

  parse_root_in_json true, format: :active_model_serializers

  belongs_to :project
end
