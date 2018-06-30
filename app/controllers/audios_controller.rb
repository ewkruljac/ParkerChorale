class AudiosController < ApplicationController
  def new
    @audio_file = Audio.new
    @events = Event.all
  end

  def create
    @audio_file = Audio.new(audio_params)

    if @audio_file.save
      redirect_to manage_song_files_path
    else
      render :new
    end
  end

  def index
    @audio_files = Audio.all
  end

  def edit
    @audio_file = Audio.find(params[:id])
    @events = Event.all
  end

  def update
    @audio_file = Audio.find(params[:id])

    if @audio_file.update(audio_params)
      redirect_to manage_song_files_path
    else
      render :edit
    end
  end

  def destroy
    @audio_file = Audio.find(params[:id]).destroy
    redirect_to manage_song_files_path
  end

  def manage_song_files
    @audio_files = Audio.all
  end

  private

    def audio_params
      params.require(:audio).permit(:title, :event_id)
    end
end
