class QuestionsController < ApplicationController

  def index
  	@questions = Question.paginate(:page => params[:page], :per_page => 5)
  end	

  def print_que_ans
  	if !params[:question_all].nil?  		
  	  @questions = Question.includes(:question_answers)
    elsif !params[:question_ids].nil?      
      @questions = Question.selected(params[:question_ids])      
    else       
    end		
    respond_to do |format|
      format.js
    end  
  end

end
