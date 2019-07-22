# frozen_string_literal: true

class SchoolClassesController < ApplicationController
  def index
    @school_classes = SchoolClass.all
  end

  def new
    @school_class = SchoolClass.new
  end

  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    @school_class = SchoolClass.create(school_class_params(:title, :room_number))
    redirect_to @school_class
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    @school_class.update(school_class_params(:title, :room_number))
    redirect_to @school_class
  end

  def destroy
    SchoolClass.destroy(params[:id])
    redirect_to school_classes_path
  end

  private

  def school_class_params(*args)
    params.require(:school_class).permit(*args)
  end
end
