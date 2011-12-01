# Inevit Solutions.
# This product includes software developed by Inevit Solutions.
# All rights reserved
class DefaultConfig 
	@@var = { 
			:location_id => "1",
		}
	
	def self.get
    return @@var
	 end

end
