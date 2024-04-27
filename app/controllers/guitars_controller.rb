class GuitarsController < ApplicationController

    def index
    end
  
    def new
        @guitars = Guitar.new
      end
    
      def show
        @guitars = Guitar.find_by(id: params[:id])
      end
  
      def create
        guitar = Guitar.new(guitar_params)
    
        if guitar.save
            flash[:notice] = "診断が完了しました"
            redirect_to guitar_path(guitar.id)
        else
            redirect_to :action => "new"
        end
      end
    
      
      private
      def guitar_params
          params.require(:guitar).permit(:id, :question)
      end

end
