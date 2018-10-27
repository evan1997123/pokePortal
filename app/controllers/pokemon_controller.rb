class PokemonController < ApplicationController
	def capture
		@current_pokemon = Pokemon.find_by(id: params[:id])
		@current_pokemon.update(trainer: current_trainer)
		redirect_to "/" 
	end

	def damage
		@current_pokemon = Pokemon.find_by(id: params[:id])
		@current_pokemon.update(health: @current_pokemon.health-10)
		redirect_to trainer_path(id: current_trainer)
	end

	def heal
		@current_pokemon = Pokemon.find_by(id: params[:id])
		@current_pokemon.update(health: @current_pokemon.health + 10)
		redirect_to trainer_path(id: current_trainer)
	end

	def new
		@pokemon = Pokemon.new
	end	

	def create
		@pokemon = Pokemon.new(pokemon_params)
		if @pokemon.save
			@pokemon.update(level: 1, health: 100, trainer: current_trainer)	
			@pokemon.save
			redirect_to trainer_path(id: current_trainer)
		else
			redirect_to new_path
			flash[:error] = @pokemon.errors.full_messages.to_sentence
		end
	end

	private
		def pokemon_params
			params.require(:pokemon).permit(:name,:ndex)
		end
end