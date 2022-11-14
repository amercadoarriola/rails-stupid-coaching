
class QuestionsController < ApplicationController
    def ask
    end

    def answer
        @question = params[:question]
        @answer = stupid_coach(@question)
    end

    def stupid_coach(str)
        is_question?(str) ? ANSWER_QUESTION : ((str === QUESTION_WORK) ? ANSWER_WORK : ANSWER_ELSE)
    end

    def is_question?(str)
        (str === nil) ? false : str.end_with?("?")
        (str ==) :str.end_with?("?")
    end
end
