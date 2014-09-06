module ClansHelper
	def believers
		 options = {"please Select" => ""}
              Believer.find_all_by_gender("Male").each do |believer|
                      options = options.merge({believer.name => believer.id} )
              end
              options
	end
	def believers1
		 options = {"please Select" => ""}
              Believer.find_all_by_gender("Female").each do |believer|
                      options = options.merge({believer.name => believer.id} )
              end
              options
	end
end

