module LogViewer
  module ApplicationHelper
  	def read_file(log_file)
  		requests = []
  		prev_line = ""
      current_request = ""
      Elif.open(log_file, 'r') do |f|
        while line = f.gets
          if line.index('Started ') == 0
            current_request = line+current_request if line != "\n"
            requests.push(current_request) if current_request.present? and current_request.index("Started").present? and !current_request.index("Served asset ").present? and !current_request.index(root_path).present?
            break if requests.count == 1000
            current_request = ""
          else
            current_request = line+current_request if line != "\n"
            prev_line = line
          end
        end
      end
      requests
  	end

    def print_line(text)
      text.gsub( /\[[0-9;]*m/, "" )
    end

  end
end