class PlayerSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :grade, :program, :notes, :catch, :throw, :pitch, :bat, :athleticism
end
