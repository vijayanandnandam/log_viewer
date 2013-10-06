module LogViewer
  module ApplicationHelper
  	def read_file(log_file)
  		requests = []
  		prev_line = ""
      current_request = ""
      lines = File.readlines(log_file)
      lines.each do |line|
        if line.index('Started ') == 0
          requests.unshift(current_request) if current_request.present?
          current_request = line
        else
          current_request += line if line != "\n"
          prev_line = line
        end
      end
      requests
  	end
  end
end
