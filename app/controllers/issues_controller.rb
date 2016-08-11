class IssuesController < ApplicationController
  def index
    @issues = Issue.all.order("created_at DESC")
  end

  def show
    @issues = Issue.find(params[:id])
  end
end
