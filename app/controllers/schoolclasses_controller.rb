class SchoolclassesController < ApplicationController
  before_action :set_schoolclass, only: [:show, :edit, :update, :destroy]


  def index
    @schoolclasses = Schoolclass.all
  end


  def show
  end


  def new
    @schoolclass = Schoolclass.new
  end


  def edit
  end

  def create
    @schoolclass = Schoolclass.new(schoolclass_params)

    respond_to do |format|
      if @schoolclass.save
        format.html { redirect_to @schoolclass, notice: 'Schoolclass was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end


  def update
    respond_to do |format|
      if @schoolclass.update(schoolclass_params)
        format.html { redirect_to @schoolclass, notice: 'Schoolclass was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /schoolclasses/1
  # DELETE /schoolclasses/1.json
  def destroy
    @schoolclass.destroy
    respond_to do |format|
      format.html { redirect_to schoolclasses_url, notice: 'Schoolclass was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_schoolclass
      @schoolclass = Schoolclass.find(params[:id])
    end

    def schoolclass_params
      params.fetch(:schoolclass, {})
    end
end
