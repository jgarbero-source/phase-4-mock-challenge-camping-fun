class SignupController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :render_unproc

    def index
        render json: Signup.all
    end

    def create
        signup = Signup.create!(signup_params)
        render json: signup.activity, status: :created
    end

    private

    def signup_params
        params.permit(:time, :camper_id, :activity_id)
    end

    def render_unproc(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: unprocessable_entity
    end
end
