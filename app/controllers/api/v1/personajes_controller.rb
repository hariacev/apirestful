module Api
    module V1
        class Api::V1::PersonajesController < ApplicationController
            
            
            def index
                personajes = Personaje.order('created_at DESC') 
                render json: {status: 'SUCCESS', message: 'Loaded series y pelis', data: personajes}, status: :ok
            end

            def show
                filme = Personaje.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded personaje', data: personaje}, status: :ok
            end

            def create
                filme = Personaje.new(filme_params)
                if filme.save
                    render json: {status: 'SUCCESS', message: 'personaje guardado', data: personaje}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'No saved', data:personaje.errors}, status: :unprocessable_entity
                end

            end

            private

            def filme_params
                params.permit(:imagen, :nombre, :edad, :peso)
            end

        end
    end
end 