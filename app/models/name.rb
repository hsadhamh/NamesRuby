#require 'models/concerns/filterable'

class Name < ApplicationRecord
  include Filterable
  scope :gender, -> (gender) { where gender: gender }
end
