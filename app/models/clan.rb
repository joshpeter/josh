class Clan < ActiveRecord::Base
  belongs_to :believer
  has_many :kids
  attr_accessor :kids_attributes
  attr_accessible  :name, :father_id, :mother_id, :kid_id, :kids_attributes
  accepts_nested_attributes_for :kids
  
end
