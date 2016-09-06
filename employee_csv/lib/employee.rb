require "CSV"
class Employee
  def employee_data(input_file, output_file)
    emp_data_hash = Hash.new { |hash, key| hash[key] = [] }
    CSV.foreach(input_file) do |line|
      emp_data_hash[line[2]] << [line[0], line[1]]
    end
    
    File.open(output_file, "w") do |file|
      emp_data_hash.sort.each do |key, value|
        next if key == 'Designation'
        file.puts "#{key}#{"s" if emp_data_hash[key].length > 1}"
        value.sort_by! { |line| line[1] }
        value.each { |line| file.puts "#{line[0]} (EmpId: #{line[1]})" }
        file.puts
      end
    end
  end
end

