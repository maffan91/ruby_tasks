puts('Welcome to the Text Analyzer Program...!')

# Features:
character_count_with_space = 0
character_count_without_space = 0
word_count = 0

#text file path
file_path = 'text_analysis_files/simple_paragraph.txt'

#reading files line-wise
text_file = File.readlines(file_path)


text_file.each {|line|
  word_count += line.split(' ').size
  character_count_with_space += line.gsub("\n",'').size
  character_count_without_space += line.gsub("\n",'').gsub(' ','').size
}

puts("***Summary***\nTotal lines in file: #{text_file.size}\nTotal characters(with spaces): #{character_count_with_space}\nTotal Characters(without spaces): #{character_count_without_space}\nWord Count: #{word_count}")

