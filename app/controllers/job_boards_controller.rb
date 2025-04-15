class JobBoardsController < ApplicationController
  before_action :set_job_board, only: %i[ show edit update destroy ]

  # GET /job_boards or /job_boards.json
  def index
    @job_boards = JobBoard.all
  end

  # GET /job_boards/1 or /job_boards/1.json
  def show
  end

  # GET /job_boards/new
  def new
    @job_board = JobBoard.new
  end

  # GET /job_boards/1/edit
  def edit
  end

  # POST /job_boards or /job_boards.json
  def create
    @job_board = JobBoard.new(job_board_params)

    respond_to do |format|
      if @job_board.save
        format.html { redirect_to @job_board, notice: "Job board was successfully created." }
        format.json { render :show, status: :created, location: @job_board }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_boards/1 or /job_boards/1.json
  def update
    respond_to do |format|
      if @job_board.update(job_board_params)
        format.html { redirect_to @job_board, notice: "Job board was successfully updated." }
        format.json { render :show, status: :ok, location: @job_board }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_boards/1 or /job_boards/1.json
  def destroy
    @job_board.destroy!

    respond_to do |format|
      format.html { redirect_to job_boards_path, status: :see_other, notice: "Job board was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_board
      @job_board = JobBoard.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def job_board_params
      params.expect(job_board: [ :company_name, :company_link, :applied, :position, :date_posted ])
    end
end
