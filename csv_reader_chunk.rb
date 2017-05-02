# Task 02: file reading in chunks

def get_chunk(file,size_in_mb)
  file.read(size_in_mb*1024)
end


# file location
file_location = 'data/lexile_titles.txt'
require 'time'

start_time = Time.new.inspect

fp = File.open(file_location)

  until fp.eof?
    chunk = get_chunk(fp, 5)
    puts(chunk)
    fp.seek(chunk.size, IO::SEEK_CUR)
  end

fp.close

end_time = Time.new.inspect
puts("Start Time: #{start_time}")
puts("End Time: #{end_time}")



