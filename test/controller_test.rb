require 'test_helper'
require 'mocha/mini_test'

module MissingTemplate406
  class HomeControllerTest < ActionDispatch::IntegrationTest
    test 'can get home with valid format' do
      get root_url
      assert_response :success
    end

    test 'can get home with invalid format' do
      assert_raises ActionView::MissingTemplate do
        get root_url, format: :json
      end
    end

    test 'can get home with invalid format in production' do
      Rails.env.expects(:production?).returns(true)
      get root_url, format: :json
      assert_response :not_acceptable
    end
  end
end
