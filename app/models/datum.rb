class Datum < ApplicationRecord
	def self.import(file)  
  	SmarterCSV.process(file.path, :col_sep => "^") do |row|  
  	Datum.create! row 
  end  
end
end
