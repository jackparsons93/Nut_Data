class Datum < ApplicationRecord
	def self.import(file)  
  	SmarterCSV.process(file.path) do |row|  
  	Data.create! row 
  end  
end
end
