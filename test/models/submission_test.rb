require 'test_helper'

class SubmissionTest < ActiveSupport::TestCase
  setup do
    @user = User.create({email:"test@test.com"})
  end
  #test case A
  test "calculate mbti should return ENTP" do
    submission = Submission.create({user_id:@user.id})
    [4,3,1,6,7,3,5,3,6,6].each_with_index do |score,i|

      question_id = i+1
      Answer.create({submission_id:submission.id, question_id:question_id, score: score})
    end
    result = submission.calculate_mbti
    assert_equal result[:final_result].join(), "ENTP"
  end
  #test case B
  test "calculate mbti should return ESTJ" do
    submission = Submission.create({user_id:@user.id})
    [1,5,4,6,5,2,6,3,3,2].each_with_index do |score,i|

      question_id = i+1
      Answer.create({submission_id:submission.id, question_id:question_id, score: score})
    end
    result = submission.calculate_mbti
    assert_equal result[:final_result].join(), "ESTJ"
  end
  #test case D
  test "calculate mbti should return INFP" do
    submission = Submission.create({user_id:@user.id})
    [3,2,6,1,7,3,2,5,2,7].each_with_index do |score,i|

      question_id = i+1
      Answer.create({submission_id:submission.id, question_id:question_id, score: score})
    end
    result = submission.calculate_mbti
    assert_equal result[:final_result].join(), "INFP"
  end
  #test case E
  test "calculate mbti should return ISFP" do
    submission = Submission.create({user_id:@user.id})
    [3,4,7,1,2,5,4,3,2,6].each_with_index do |score,i|

      question_id = i+1
      Answer.create({submission_id:submission.id, question_id:question_id, score: score})
    end
    result = submission.calculate_mbti
    assert_equal result[:final_result].join(), "ISFP"
  end
  #test case F
  test "calculate mbti should return ESTJ 2" do
    submission = Submission.create({user_id:@user.id})
    [4,4,4,4,4,4,4,4,4,4].each_with_index do |score,i|

      question_id = i+1
      Answer.create({submission_id:submission.id, question_id:question_id, score: score})
    end
    result = submission.calculate_mbti
    assert_equal result[:final_result].join(), "ESTJ"
  end
  #test case G
  test "calculate mbti should return ISTJ" do
    submission = Submission.create({user_id:@user.id})
    [1,1,1,1,1,1,1,1,1,1].each_with_index do |score,i|

      question_id = i+1
      Answer.create({submission_id:submission.id, question_id:question_id, score: score})
    end
    result = submission.calculate_mbti
    assert_equal result[:final_result].join(), "ISTJ"
  end
  #test case H
  test "calculate mbti should return ESTP" do
    submission = Submission.create({user_id:@user.id})
    [7,7,7,7,7,7,7,7,7,7].each_with_index do |score,i|

      question_id = i+1
      Answer.create({submission_id:submission.id, question_id:question_id, score: score})
    end
    result = submission.calculate_mbti
    assert_equal result[:final_result].join(), "ESTP"
  end
end
