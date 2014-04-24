class WildFire < ActiveRecord::Base
	belongs_to :location

	def self.search(params)
		joins(:location).where('city LIKE ?', '#{params}')
		# search_condition = "%" + "#{search}" + "%"
		# find(, :conditions => 
		# joins(:locations).where('state LIKE ?', search_condition))
	end
end
