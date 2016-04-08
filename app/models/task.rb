class Task
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :completed, type: Boolean, default: false
end
