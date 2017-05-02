# Task 01: file reading from csv and grade mapping

# book model class
class Book
  attr_accessor :title,:author,:isbn,:isbn13,:lexile_code,:lexile,:publisher,:pages,:doc_type,:series,:awards,:summary,:last_updated_date,:lexile_combined,:grade
end


# grade field mapping
def set_grade(lexile_code)

  if  !lexile_code.nil?
    lexile_code = Integer lexile_code
  else
    return 'undefined'
  end

  if lexile_code  < 530
    1
  elsif lexile_code < 650
    2
  elsif lexile_code < 820
    3
  elsif lexile_code < 940
    4
  elsif lexile_code < 1010
    5
  elsif lexile_code < 1070
    6
  elsif lexile_code < 1120
    7
  elsif lexile_code < 1185
    8
  elsif lexile_code < 1260
    9
  elsif lexile_code < 1335
    10
  elsif lexile_code > 1335
    11
  end
end



# file location
file_location = 'data/lexile_titles.txt'
require 'time'

start_time = Time.new.inspect
i = 0
File.open(file_location) do |fp|
  fp.each {|line|
    #skip the first line
    book = line.split('	')
    graded_book = Book.new
    if i != 0
      graded_book.title = book[0]
      graded_book.author = book[1]
      graded_book.isbn =  book[2]
      graded_book.isbn13 =  book[3]
      graded_book.lexile_code =  book[4]
      graded_book.lexile =  book[5]
      graded_book.publisher = book[6]
      graded_book.pages =  book[7]
      graded_book.doc_type =  book[8]
      graded_book.series=  book[9]
      graded_book.awards =  book[10]
      graded_book.summary =  book[11]
      graded_book.last_updated_date =  book[12]
      graded_book.lexile_combined =  book[13]
      #graded_book.grade = set_grade book[5]
    end
    i+=1
    puts("#{book}")
  }
end
end_time = Time.new.inspect
puts("Start Time: #{start_time}")
puts("End Time: #{end_time}")



