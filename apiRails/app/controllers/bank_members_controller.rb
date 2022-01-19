class BankMembersController < ApplicationController
    def index
        render json: BankMember.all
    end

    def show
    end

    # Use case:
    # 1. API receives a request which includes first name and last name
    # 2. API validates the input
    #    - First name: required, minimum character length = 1
    #    - Last name: required, minimum character length = 1
    # 3. API creates the new bank member
    def create
        # 1. API receives a request which includes first name and last name
        # 2. API validates the input
        params.require(:bankMember).require(:firstName, :lastName)

        # 3. API creates the new bank member
        bankMember = BankMember.new(
            firstName: params[:firstName],
            lastName: params[:lastName],
        )

        if bankMember.save
            return render json: bankMember
        else
            return render json: {error: "Error creating bank member"}
        end
    end
end
