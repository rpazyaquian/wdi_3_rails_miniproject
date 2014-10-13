class CharactersController < ApplicationController
  def create
    @character = Character.create(character_params)
    redirect_to root_path
  end
  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to root_path
  end

  private

    def character_params
      params.require(:character).permit(:name, :job)
    end

end
