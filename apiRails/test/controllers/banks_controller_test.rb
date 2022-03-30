require "test_helper"

class BanksControllerTest < ActionDispatch::IntegrationTest
  test "Can retrieve all banks" do
    banks = Bank.all;

    assert_equal 2, banks.count
    assert_equal 2, banks(:familyBank, :homeCreditUnion).length
    assert_equal "Banco de la familia", banks(:familyBank).name
  end
end
