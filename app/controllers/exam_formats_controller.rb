class ExamFormatsController < ApplicationController
  before_action :set_exam_format, only: [:show, :edit, :update, :destroy]

  # GET /exam_formats
  # GET /exam_formats.json
  def index
    @exam_formats = ExamFormat.all
  end

  # GET /exam_formats/1
  # GET /exam_formats/1.json
  def show
  end

  # GET /exam_formats/new
  def new
    @exam_format = ExamFormat.new
  end

  # GET /exam_formats/1/edit
  def edit
  end

  # POST /exam_formats
  # POST /exam_formats.json
  def create
    @exam_format = ExamFormat.new(exam_format_params)

    respond_to do |format|
      if @exam_format.save
        format.html { redirect_to @exam_format, notice: 'Exam format was successfully created.' }
        format.json { render :show, status: :created, location: @exam_format }
      else
        format.html { render :new }
        format.json { render json: @exam_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exam_formats/1
  # PATCH/PUT /exam_formats/1.json
  def update
    respond_to do |format|
      if @exam_format.update(exam_format_params)
        format.html { redirect_to @exam_format, notice: 'Exam format was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam_format }
      else
        format.html { render :edit }
        format.json { render json: @exam_format.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exam_formats/1
  # DELETE /exam_formats/1.json
  def destroy
    @exam_format.destroy
    respond_to do |format|
      format.html { redirect_to exam_formats_url, notice: 'Exam format was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam_format
      @exam_format = ExamFormat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_format_params
      params.require(:exam_format).permit(:question, :question_type, :subject_id)
    end
end
