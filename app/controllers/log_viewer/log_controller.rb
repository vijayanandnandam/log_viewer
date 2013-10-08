require_dependency "log_viewer/application_controller"
module LogViewer
  class LogController < ApplicationController
    def view
    	@log_file = "log/#{Rails.env}.log"
    	@last_md5 = params["last_md5"]
    	respond_to do |format|
    		format.js
    		format.html
    	end
    end
  end
end
