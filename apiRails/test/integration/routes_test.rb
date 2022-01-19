require "test_helper";

class RoutesTest < ActionDispatch::IntegrationTest
    test "Can access members route" do
        assert_generates "/bank_members", { :controller => "bank_members", :action => "index"}
    end
end
