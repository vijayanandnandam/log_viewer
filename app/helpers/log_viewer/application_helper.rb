module LogViewer
  module ApplicationHelper
  	def read_file(log_file)
  		requests = []
  		prev_line = ""
      current_request = ""
      File.open(log_file, 'r') do |f|
        while line = f.gets
          if line.index('Started ') == 0
            requests.unshift(current_request) if current_request.present?
            current_request = line
          else
            current_request += line if line != "\n"
            prev_line = line
          end
        end
      end
      requests.take(1000)
  	end
  end
end
