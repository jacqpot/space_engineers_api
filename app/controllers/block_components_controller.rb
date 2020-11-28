class BlockComponentsController < ApplicationController
    # POST /blocks
    def create
        @block_component = BlockComponent.new(block_component_params)
    
        if @block_component.save
          render json: @block_component, status: :created
        else
          render json: @block_component.errors, status: :unprocessable_entity
        end
      end
    
      
      private
    
        # Only allow a trusted parameter "white list" through.
        def block_component_params
          params.require(:blocks_components).permit(:block_id, :component_id)
        end
end


