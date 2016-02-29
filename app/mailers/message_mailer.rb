class MessageMailer < ApplicationMailer
    default :to => "gabrielbit1492@gmail.com"
    def message_me(msg)
        @msg = msg
        #mail from: @msg.email, subject: @msg.subject, body: @msg.content
        mail from: @msg.email, subject: @msg.subject, body: @msg.content
    end
end
