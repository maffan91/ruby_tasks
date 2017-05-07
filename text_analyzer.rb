puts('Welcome to the Text Analyzer Program...!')

#text file path
file_path = 'text_analysis_files/simple_paragraph.txt'

#reading files line-wise
text_file = File.readlines(file_path)

#print the no. of lines
puts("#{text_file.size}")