module LogViewer
  module ApplicationHelper
  	def read_file(log_file)
  		requests = []
  		prev_line = ""
      current_request = ""
      lines = File.readlines(log_file)
      lines.each do |line|
        if prev_line == "\n" and line == "\n"
          requests.unshift(current_request)
          current_request = ""
        else
          current_request += line if line != "\n"
          prev_line = line
        end
      end
      requests
  	end
  end
end
