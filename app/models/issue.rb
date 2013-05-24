class Issue < ActiveRecord::Base
  attr_accessible :name
  belongs_to :initiatives
end
