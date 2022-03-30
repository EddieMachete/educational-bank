require "test_helper"

class PersonsControllerTest < ActionDispatch::IntegrationTest
  test "can create a new person" do
    assert_difference("Person.count") do
      post persons_url, params: { person: { firstName: "Bingo", lastName: "Heeler" } }
    end
  
    puts @response.body
    # assert_redirected_to article_path(Article.last)
  end

  test "crate person fails when first name is missing" do
    assert_raises("ParameterMissing") do
      post persons_url, params: { person: { firstName: "", lastName: "Heeler" } }
    end
  end

  test "crate person fails when last name is missing" do
    assert_raises("ParameterMissing") do
      post persons_url, params: { person: { firstName: "Bingo", lastName: "" } }
    end
  end

  test "should get all persons" do
    get persons_url
    puts @response.body

    assert_response :success
    # assert_equal 1, @response.body.length
  end

  test "should retrieve an existing person" do
    get person_url(1)
    puts @response.body

    assert_response :success
    # assert_equal "Bluey", @response.body.firstName
  end
end
