from_file, to_file = ARGV

in_file = File.read(from_file)

out_file = open(to_file, 'w')
out_file.write(in_file)

puts "Copied from #{from_file} to #{to_file}"

out_file.close