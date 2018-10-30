require 'test_helper'

class EntradaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get entrada_index_url
    assert_response :success
  end

end
