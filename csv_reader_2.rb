# reading file using csv method
require 'csv'
file_path = 'data/lexile_titles.txt'
CSV.foreach(file_path,{:row_sep => '',:col_sep =>'	'}) do |row|

  puts(row)
end