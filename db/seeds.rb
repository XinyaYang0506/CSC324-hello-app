require 'csv'


dir = 'db/seeds/'

day = 0

Dir.foreach(dir) do |filename|
  next if filename == '.' or filename == '..'

  table = CSV.parse(File.read(dir + filename), headers: true, skip_blanks: true) \
    .delete_if { |row| row.to_hash.values.all?(&:blank?) }

  row = 0
  while row < table.length
    Story.create({PPE_type1: table[row][0], Amount1: table[row][1], Recipient1: table[row][2],PPE_type2: table[row][3], Amount2: table[row][4], Recipient2: table[row][5]})
    row = row + 1
  end


end