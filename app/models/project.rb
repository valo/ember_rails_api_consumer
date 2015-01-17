class Project
  include Her::Model

  parse_root_in_json true, format: :active_model_serializers

  has_many :tasks
end
