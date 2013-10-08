module LogViewer
  module ApplicationHelper
  	def read_file(log_file, last_md5 = nil)
  		requests = []
  		prev_line = ""
      current_request = ""
      Elif.open(log_file, 'r') do |f|
        while line = f.gets
          if line.index('Started ') == 0
            current_request = line+current_request if line != "\n"
            break if hex_digest(current_request) == last_md5 or requests.count == 100
            requests.push(current_request) if current_request.present? and current_request.index("Started").present? and !current_request.index("Served asset ").present? and !current_request.index(root_path[0..-2]).present?
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

    def hex_digest(text)
      Digest::MD5.hexdigest(text)
    end

  end
end