module BelieversHelper
	def index
     @believers = Believer.sorting_table(params, :name).all
     @believer = Believer.sorting_table(params, :name).all
 end
end
