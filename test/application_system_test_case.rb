require "test_helper"
require "capybara/cuprite"

WebMock.disable!

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :cuprite, screen_size: [ 1400, 1400 ], options: { headless: !ENV["HEADY"].in?(%w[1 true]) }

  include SystemTestHelper
end
