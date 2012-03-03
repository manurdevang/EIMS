module ApplicationHelper
	def title_for_select
		title =[]
			Title.all.collect{|t| title << [t.symbol,t.id]}
		return title
	end

	def blood_group_collection
		blood_group = [['B+ve',1],['B-ve',2],['AB+ve',3],['AB-ve',4],['A-ve',5],['A+ve',6],['O-ve',7],['O+ve',8]]
		return blood_group
	end

	def nationality_collection
		nationality = []
			Country.all.collect{|n| nationality << [n.nationality,n.id]}
		return nationality
	end

	def country_collection
		countries = []
			Country.all.collect{|c| countries << [c.name,c.id]}
		return countries
	end

	def state_collection_by_country(country)
		@states = []
		country_id = country 
		country_id = 1 if country.nil?
		State.find_all_by_country_id(country_id).collect {|a| @states << [a.name,a.id]}
		return @states
	end

	def relegion_collection
		return blood_group
	end
end
