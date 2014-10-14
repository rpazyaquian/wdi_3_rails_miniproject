class CharactersController < ApplicationController

  def create
    @character = Character.create(character_params)
    redirect_to :back
  end

  def destroy
    @character = Character.find(params[:id])
    @character.destroy
    redirect_to :back
  end

  def show
    @character = Character.find(params[:id])
  end

  private
    def character_params
      params.require(:character).permit(:name, :job, :profile, :party_id)
    end

end
