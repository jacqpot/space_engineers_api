class BlocksController < ApplicationController
        before_action :set_block, only: [:show, :update, :destroy]
    
      # GET /blocks
      def index
        @blocks = Block.all
    
        render json: @blocks, include: [:block_components, :components]
      end
    
      def show
        render json: @block
      end
    
      # POST /blocks
      def create
        @block = Block.new(block_params)
    
        if @block.save
          render json: @block, status: :created, location: @block
        else
          render json: @block.errors, status: :unprocessable_entity
        end
      end
    
      # PATCH/PUT /blocks/1
      def update
        if @block.update(block_params)
          render json: @block
        else
          render json: @block.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /blocks/1
      def destroy
        @block.destroy
      end
      def small 
        @blocks = Block.small
        render json: @blocks, include: [:block_components, :components]

      end
      def large 
        @blocks = Block.large
        render json: @blocks, include: [:block_components, :components]

      end
      def either
        @blocks = Block.either
        render json: @blocks, include: [:block_components, :components]

      end
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_block
          @block = block.find(params[:id])
        end
    
        # Only allow a trusted parameter "white list" through.
        def block_params
          params.require(:block).permit(:name, :category, :size)
        end

    
end
