class WildFire < ActiveRecord::Base
	belongs_to :location

	scope :accessible, -> { where(accessible_by_ground_vehicle: true) }
	scope :fire_fighters, -> { where(firefighters_deployed: true) }

	def self.search_by_city(city)
		joins(:location).where('locations.city = ?', city)
	end

	def self.search_by_state(state)
		joins(:location).where('locations.state = ?', state)
	end


	def self.search_by_location(location_name)
		joins(:location).where('locations.name LIKE ?', location_name)
	end

	def self.search(params)
		city = params[:city]
		state = params[:state]
		location_name = params[:name]
		anything = params[:anything]
		accessible_by_ground_vehicle = params[:accessible_by_ground_vehicle]
		fire_fighters_present = params[:firefighters_deployed]

		search = WildFire.all

		if params[:city].present?
			search = search.search_by_city(city)
		end
		
		if params[:state].present?
			search = search.search_by_state(state)
		end

		if params[:name].present?
			search = search.search_by_location(location_name)
		end

		if params[:accessible_by_ground_vehicle] == "true"
			search = search.accessible
		end

		if params[:firefighters_deployed] == "true"
			search = search.fire_fighters
		end

		search
	end
end
