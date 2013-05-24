class Firm < ActiveRecord::Base
  attr_accessible :name, :serivces
  has_many :consultant_services
  has_many :initiatives, :through => :consultant_services
end
