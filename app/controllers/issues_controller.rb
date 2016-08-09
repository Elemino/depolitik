class IssuesController < ApplicationController
  def index
    @issues = Issue.all.order("created_at DESC")
  end
end
