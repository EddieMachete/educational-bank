class PersonsController < ApplicationController
  def index
    render json: Person.all
  end

  def show
    person = Post.find(params[:id])

    if stale?(last_modified: person.updated_at)
      render json: person
    end
  end

  # Use case:
  # 1. API receives a request which includes first name and last name
  # 2. API validates the input
  #    - First name: required, minimum character length = 1
  #    - Last name: required, minimum character length = 1
  # 3. API creates the new person
  def create
    # 1. API receives a request which includes first name and last name
    # 2. API validates the input
    params.require(:person).require([:firstName, :lastName])

    # 3. API creates the new person
    personModel = params[:person]

    person = Person.new(
      firstName: personModel[:firstName],
      lastName: personModel[:lastName],
    )

    if person.save
      return render json: person
    else
      return render json: {error: "error-person-create"}
    end
  end
end
