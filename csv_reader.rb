# Task 01: file reading from csv and grade mapping
$LOAD_PATH << '.'

require 'time'
require 'book_grade_module'




# file location
file_location = 'data/lexile_titles.txt'
include LexileModule
start_time = Time.new.inspect
i = 0
File.open(file_location) do |fp|
  fp.each {|line|


    book = line.split('	')

    #skip if the record is not fit for the model
    if book.size < 14
      next
    end

    graded_book = Book.new
    #skip the first line
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

      #skip the record if the lexile_code is empty
      if book[5].nil?
        next
      end
      graded_book.grade = LexileModule.set_grade book[5]
    end
    i+=1
     puts("#{graded_book.grade}")
  }
end
end_time = Time.new.inspect
puts("Records Processed: #{i}")
puts("Start Time: #{start_time}")
puts("End Time: #{end_time}")



