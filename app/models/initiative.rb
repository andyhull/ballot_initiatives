class Initiative < ActiveRecord::Base
  attr_accessible :contributions, :description, :expenditures, :name, :status, :initiativetype, :year, :firm_ids, :issue_ids
  has_many :consultant_services
  has_many :firms, :through => :consultant_services
  has_many :issues
  accepts_nested_attributes_for :consultant_services, :allow_destroy => true
  attr_accessible :consultant_services_attributes, :consultant_services
end
