class AssignmentsController < ApplicationController

  def index
    @assignments = Assignment.all
  end

  def new
    @assignment = Assignment.new
  end

  def create
    a = Assignment.new(assignment_params)
    if a.save
      redirect_to assignment_path(a), notice: "Successfully created assignment"
    else
      render new_assignment_path, notice: "There was a problem creating the assignment"
    end
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  private

  def assignment_params
    params.require(:assignment).permit(:title, :link, :level)
  end

end
