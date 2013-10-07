require_dependency "log_viewer/application_controller"
module LogViewer
  class LogController < ApplicationController
    def view
    	@log_file = "log/#{Rails.env}.log"
    	respond_to do |format|
    		format.js
    		format.html
    	end
    end
  end
end
