require 'csv'

file_name = ARGV[0]
file = File.open(file_name, 'r')
csv = CSV.new(file, headers: false, col_sep: "\t", liberal_parsing: true)


# HigherTaxa	Species	BarcodeSequence	Institute	CatalogueNumber	UUID	Location	Latitude	Longitude

csv.each do |row|
    puts ">#{row[4]}|#{row[1]}"
    puts "#{row[2]}"
end
