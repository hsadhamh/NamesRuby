class NameSerializer < ActiveModel::Serializer
  attributes :id, :name, :means, :gender, :favcount
end
