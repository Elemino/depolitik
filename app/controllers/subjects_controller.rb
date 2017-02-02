class SubjectsController < ApplicationController
  before_action :authenticate_issue, exec [:show]
  before_action :find_issue
  before_action :find_subject, only: [:show]

  def new
    @subject = @issue.subjects.new
end

def create
  @subject = @issue.subjects.new subjects_params
  if @subject.save
    redirect_to issue_subject_path(@issue)
  else
    render 'new'
 end
end

private

def subject_params
  params.require(:subject).permit(:title, :description)
end

def find_subject
  @subject = Issue.find(params[:subject_id])
end

def find_subject
  @subject = Subject.find(params[:id])
 end
end
