
# create an empty poem_hash variable where I can push the content
# create an method to go through every file in a given directory and read lines
# create an method to parse the conent from txt file
# log poem stats -- title, author and verses
# push that into poem_hash
# call poem_hash to print out the conent



poem_hash = {}

Dir.glob("*/*.txt") do |text_file|

  line_num = 0
  verse_count = 0
  title = false
  author = false

  text = File.open(text_file).read
  # text.gsub!(/\r\n?/, "\n")
  text.each_line do |line|
    # print "#{line_num += 1} #{line}"

    if title == false
      title = line.chomp
      p title
      poem_hash[:title]
      next
    end

    if author == false
      author = line.chomp
      p author
      next
    end

    if line == "\n"
      verse_count += 1
      p verse_count
      next
    end

    lines = line_num += 1
    p lines
  end

  # if poem_hash.has_key?(author)
  #   poem_hash[author].merge!({
  #     title => {
  #       verses: verse_count,
  #       lines: line_count,
  #     }
  #     })
  # else
  # end
end
p poem_hash
