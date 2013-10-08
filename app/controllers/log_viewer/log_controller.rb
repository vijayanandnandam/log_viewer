require_dependency "log_viewer/application_controller"
module LogViewer
  class LogController < ApplicationController
    def view
    	@log_file = "log/#{Rails.env}.log"
    	@last_md5 = params["last_md5"]
      @all_exceptions = all_exceptions
    	respond_to do |format|
    		format.js
    		format.html
    	end
    end

    private
    def all_exceptions
      all_exceptions = []
      ObjectSpace.each_object(Class) do |k|
        all_exceptions << k.to_s if k.ancestors.include?(Exception)
      end
      return all_exceptions
    end
  end
end
