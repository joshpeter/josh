module KidsHelper
	def believers2
		options = {"Please Select" => ""}
		Believer.all.each do |believer|
			options = options.merge({believer.name => believer.id})
		end
		options
	end
end
