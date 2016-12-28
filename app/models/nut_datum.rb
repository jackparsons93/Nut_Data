class NutDatum < ApplicationRecord
	def self.import(file)  
  	SmarterCSV.process(file.path) do |row|  
  	NutDatum.create! row 
  end  
end
end
