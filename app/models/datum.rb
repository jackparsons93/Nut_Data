class Datum < ApplicationRecord
	def self.import(file)  
  	SmarterCSV.process(file.path, :col_sep => '^') do |row|  
  	Data.create! row 
  end  
end
end
