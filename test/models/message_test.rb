require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
    test 'responds to name, email, subject and content' do
        msg = Message.new
        [:name, :email, :subject, :content].each do |attr|
            assert msg.respond_to? attr
        end
    end
    
    test 'should accept valid attributes' do
        valid_attrs = {
            name: 'gabriel',
            email: 'gabriel@example.com',
            subject: 'hi',
            content: 'sfasad'
        }
    end
    
    test 'attributes can not be blank' do
        msg = Message.new
        refute msg.valid?
    end
end
