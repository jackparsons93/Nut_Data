class NutDatum < ApplicationRecord
	def self.import(file)  
  	SmarterCSV.process(file.path, :col_sep => '^') do |row|  
  	Nut_Data.create! row 
  end  
end
end
