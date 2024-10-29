class Admin::ForksController < ApplicationController
  before_action :set_fork, only: %i[ show edit update destroy ]

  # GET /forks or /forks.json
  def index
    @forks = Fork.all
  end

  # GET /forks/1 or /forks/1.json
  def show
  end

  # GET /forks/new
  def new
    @fork = Fork.new
  end

  # GET /forks/1/edit
  def edit
  end

  # POST /forks or /forks.json
  def create
    @fork = Fork.new(fork_params)

    respond_to do |format|
      if @fork.save
        format.html { redirect_to @fork, notice: "Fork was successfully created." }
        format.json { render :show, status: :created, location: @fork }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @fork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forks/1 or /forks/1.json
  def update
    respond_to do |format|
      if @fork.update(fork_params)
        format.html { redirect_to @fork, notice: "Fork was successfully updated." }
        format.json { render :show, status: :ok, location: @fork }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @fork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forks/1 or /forks/1.json
  def destroy
    @fork.destroy!

    respond_to do |format|
      format.html { redirect_to forks_path, status: :see_other, notice: "Fork was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fork
      @fork = Fork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def fork_params
      params.require(:fork).permit(:Story_id, :Chapter_id, :place)
    end
end
