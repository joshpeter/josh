class Believer < ActiveRecord::Base
  attr_accessible :dob, :email, :name, :phone, :status, :anniversary, :spouse
  validates_presence_of :name, :phone, :dob,  :status
  validates :phone, numericality: { only_integer: true }
  validates :phone, length: { is: 10 }
  acts_as_birthday :dob, :anniversary 
  before_save :set_anniversary


  def set_anniversary
  	
  	if status == "single"
  		self.anniversary = nil
  	end
  end


  def self.get_counts
		counts = {}
		counts[:birthday_count] = Believer.dob_today.count
		counts[:birthdays_week_count] = Believer.find_dobs_for(Time.zone.today.beginning_of_week, Time.zone.today.end_of_week).count    
		counts[:anniv_count] = Believer.anniversary_today.count
		counts[:annivs_week_count] = Believer.find_anniversaries_for(Time.zone.today.beginning_of_week, Time.zone.today.end_of_week).count
		counts
  end
end
