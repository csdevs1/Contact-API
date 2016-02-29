module Api
    module V1
        class MessagesController < ApplicationController
            respond_to :json
            
            def new
                @messages = Message.all
                respond_with @messages
            end
            
            def create
               # @message = Message.new(message_params)        
                #if @message.valid?
                 #   
                #end
                @message = Message.new(message_params)
                respond_with MessageMailer.message_me(@message).deliver_now
            end

            private
            def message_params
                params.require(:message).permit(:name, :email, :subject, :content)
            end
        end
    end
end