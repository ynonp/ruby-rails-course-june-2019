class FilesController < ApplicationController
  def index
    prepare_files
  end

  def show
    @filename = Rails.configuration.files_base.join(params[:filename])
    @content = File.read(@filename)
  end

  def destroy
    filename = Rails.configuration.files_base.join(params[:filename])
    File.unlink(filename)

    # redirect_to files_index_path
    prepare_files
    render :index
  end

  private

  def prepare_files
    @files = Dir.glob(Rails.configuration.files_base.join("*"))
  end
end
