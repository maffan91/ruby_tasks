module LexileModule

  class Book
    attr_accessor :title,:author,:isbn,:isbn13,:lexile_code,:lexile,:publisher,:pages,:doc_type,:series,:awards,:summary,:last_updated_date,:lexile_combined,:grade
  end

  def LexileModule.file_chunk(file_path,start_line,end_line)
    read_file_lines = File.readlines(file_path)
    read_file_lines[start_line..end_line]
  end

  def LexileModule.set_grade(lexile_code)

    case lexile_code.to_i

      when 1..530
        1
      when 420..650
        2
      when 520..820
        3
      when 740..940
        4
      when 830..1010
        5
      when 925..1070
        6
      when 970..1120
        7
      when 1010..1185
        8
      when 1050..1260
        9
      when 1080..1335
        10
      when 1185..1385
        11
      else
        'none'
    end
  end

end