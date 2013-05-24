class Initiative < ActiveRecord::Base
  attr_accessible :contributions, :description, :expenditures, :name, :status, :type, :year, :firm_ids, :issue_ids
  has_many :consultant_services
  has_many :firms, :through => :consultant_services
  has_many :issues
end
