require "test_helper";

class RoutesTest < ActionDispatch::IntegrationTest
  test "Can access banks route" do
    assert_generates "/banks", { :controller => "banks", :action => "index"}
  end

  test "Can access persons route" do
    assert_generates "/persons", { :controller => "persons", :action => "index"}
  end
end
