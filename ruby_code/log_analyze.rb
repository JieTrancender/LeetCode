#!/usr/bin/env ruby

def log_analyze(filename)
	result_hash = {}
	File.open(filename, "r") do |file|
		file.each_line do |line|
			match_result = /\[([\w]+)\][\s]+([a-zA-Z]+)\.([a-zA-Z]+)/.match(line)
			if match_result != nil and line[-2] != 'R' then
				result_hash[match_result[1]] ||= {}
				result_hash[match_result[1]][match_result[2]] ||= {}
				result_hash[match_result[1]][match_result[2]][match_result[3]] ||= 0
				result_hash[match_result[1]][match_result[2]][match_result[3]] = result_hash[match_result[1]][match_result[2]][match_result[3]] + 1

				# puts line
				# puts match_result[0]
				print match_result[1], ' ', match_result[2], ' ', match_result[3], "\n"
			end
		end

		analyze_hash = {}
		call_hash = {}
		call_package_hash = {}
		package_hash = {}
		method_hash = {}
		result_hash.each do |key1, value1|
			# analyze_hash[key1] ||= {}
			call_hash[key1] = 0
			call_package_hash[key1] = {}
			value1.each do |key2, value2|
				call_package_hash[key1][key2] = 0
				package_hash[key2] ||= 0
				value2.each do |key3, value3|
					print key1, ' ', key2, ' ', key3, ' ', value3, "\n"

					call_hash[key1] = call_hash[key1] + 1
					call_package_hash[key1][key2] = call_package_hash[key1][key2] + 1
					package_hash[key2] = package_hash[key2] + 1
					key = key2.to_s + "." + key3.to_s
					method_hash[key] ||= 0
					method_hash[key] = method_hash[key] + 1
				end
			end
		end

		File.open("analyze_result-2018-02-09.txt", "a+") do |temp|
			puts "-----------------call hash-----------------"
			temp.puts "-----------------call hash-----------------"
			call_hash = call_hash.sort_by {|key, value| value}.reverse
			call_hash.each do |key, value|
				print key, " called ", value, " times\n"
				temp.print key, " called ", value, " times\n"
			end

			puts "-------------call package hash-------------"
			temp.puts "-------------call package hash-------------"
			# call_package_hash.sort_by {|key, value| value}
			# call_package_hash = call_package_hash.sort_by {|key, value| value[:]}
			# call_package_hash = call_package_hash.sort_by do |key1, value1|

			call_package_hash.each do |key, package|
				package.each do |name, value|
					print key, " called ", name, " ", value, " times\n"
					temp.print key, " called ", name, " ", value, " times\n"
				end
			end

			puts "---------------package hash----------------"
			temp.puts "---------------package hash----------------"
			package_hash = package_hash.sort_by {|key, value| value}.reverse
			package_hash.each do |key, value|
				print key, " was called ", value, " times\n"
				temp.print key, " was called ", value, " times\n"
			end

			puts "-----------------call hash-----------------"
			temp.puts "-----------------call hash-----------------"
			method_hash = method_hash.sort_by {|key, value| value}.reverse
			method_hash.each do |key, value|
				print key, " was called ", value, " times\n"
				temp.print key, " was called ", value, " times\n"
			end
		end
	end
end

log_analyze "./data/game_2018-02-09.log"
