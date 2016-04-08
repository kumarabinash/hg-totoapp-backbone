class Task
  include Mongoid::Document
  include Mongoid::Timestamps
  field :name, type: String
  field :completed, type: Boolean, default: false



  def as_json(*args)
    res = super
    res["id"] = res.delete("_id").to_s
    res
  end
end
