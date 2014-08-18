class HomeController < ApplicationController
  
  def index
    @counts = Believer.get_counts
  end

  def today
  	@believers_show= Believer.dob_today
  	
  end

  def week
    @believers_show = Believer.find_dobs_for(Time.zone.today.beginning_of_week, Time.zone.today.end_of_week)
    
  end

  def anniv
    @believers_show= Believer.anniversary_today 
  end
  
  def allb
    @believers_show= Believer.find_dobs_for(Time.zone.today.beginning_of_year, Time.zone.today.end_of_year)
  end

  def alla
    @believers_show= Believer.find_anniversaries_for(Time.zone.today.beginning_of_year, Time.zone.today.end_of_year)
  end

  def annivs
    @believers_show= Believer.find_anniversaries_for(Time.zone.today.beginning_of_week, Time.zone.today.end_of_week)
  end
end
