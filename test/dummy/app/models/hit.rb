class Hit

  if defined?(Mongoid)
    include Mongoid::Document

    field :name
    field :description

    validates_presence_of :name
    validates_uniqueness_of :name
  else
    extend ActiveModel::Naming
  end

  def self.model_fields
    [[:name, :string], [:description, :text]]
  end

end
