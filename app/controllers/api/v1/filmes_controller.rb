module Api
    module V1
        class Api::V1::FilmesController < ApplicationController
            
            
            def index
                filmes = Filme.order('created_at DESC') 
                render json: {status: 'SUCCESS', message: 'Loaded series y pelis', data: filmes}, status: :ok
            end

            def show
                filme = Filme.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Loaded Filme', data: filme}, status: :ok
            end

            def create
                filme = Filme.new(filme_params)
                if filme.save
                    render json: {status: 'SUCCESS', message: 'Filme guardado', data: filme}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'No saved', data:filme.errors}, status: :unprocessable_entity
                end

            end

            def update
                filme = Filme.find(params[:id])
                if permit.update(filme_params)
                    render json: {status: 'SUCCESS', message: 'Filme actualizado', data: filme}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'No updated', data:filme.errors}, status: :unprocessable_entity
                end
            end
 
            private

            def filme_params
                params.permit(:imagen, :titulo, :calificacion)
            end

        end
    end
end 