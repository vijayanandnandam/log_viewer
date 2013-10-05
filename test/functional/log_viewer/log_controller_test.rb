require 'test_helper'

module LogViewer
  class LogControllerTest < ActionController::TestCase
    test "should get view" do
      get :view
      assert_response :success
    end
  
  end
end
