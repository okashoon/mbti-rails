class Submission < ApplicationRecord
    belongs_to :user
    has_many :answers

    def calculate_mbti
        dimensions_total_score = {
            "EI"=>[0,0],
            "SN"=>[0,0],
            "TF"=>[0,0],
            "JP"=>[0,0]
        }

        for answer in self.answers
            question = answer.question
            dimension_end = 1
            dimension_opposite_end = 0
            if question.direction == -1
                dimension_end = 0
                dimension_opposite_end = 1   
            end
            dimensions_total_score[question.dimension][dimension_end]+=answer.score
            dimensions_total_score[question.dimension][dimension_opposite_end]+= 8-answer.score
        end
        # pp dimensions_total_score
        final_result = []
        dimensions_total_score.each do |dimension,result|
            leaning_end_index = result.find_index(result.max)
            leaning_end = dimension[leaning_end_index]
            pp leaning_end
            final_result.push(leaning_end)
        end
        pp dimensions_total_score
        return final_result
    end
end
