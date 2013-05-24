class ConsultantService < ActiveRecord::Base
  attr_accessible :total_promised, :total_received
  belongs_to :firm
  belongs_to :initiative
end
