Dir.glob("*/*.txt") do |poem_text_file|
  # puts "working on: #{poem_text_file}"
  line_num = 0
  text = File.open(poem_text_file).read
  text.gsub!(/\r\n?/, "\n")
  text.each_line do |line|
    print "#{line_num += 1} #{line}"
  end

end
