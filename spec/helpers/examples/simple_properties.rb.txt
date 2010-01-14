class SimpleProperties

  include DataMapper::Resource

  # The primary key of the model
  property :id, Serial

  # The name of the model
  property :name, String

end
