class SubmissionsController < ApplicationController
    def create
        pp params
        if !params["userEmail"]
            render json: {message:"user email required"}, status: :unprocessable_entity
            return

        end
        if params["questions"].filter{|q|q["answer"]==0}.count>0
            render json: {message:"should answer all questions"}, status: :unprocessable_entity
            return
        end
        user = User.where({email:params["userEmail"]}).first_or_initialize
        user.save
        submission = Submission.create({user_id:user.id})
        for question in params["questions"]
            Answer.create({submission_id:submission.id,question_id:question["id"],score:question["answer"]})
        end
        render json:{message:"success",result:submission.calculate_mbti}
    end
end
