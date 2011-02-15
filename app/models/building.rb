class Building < ActiveRecord::Base
  validates :address, :presence => true
  validates :city, :presence => true
  validates :state, :presence => true
  validates :zip, :presence => true
  
  has_many :spaces, :order => 'suite DESC',
  					:dependent => :nullify
  
end
