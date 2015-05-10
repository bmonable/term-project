require 'spec_helper'

RSpec.describe Room, :type => :model do
   "add some examples to (or delete) #{__FILE__}"
   
      describe 'search' do
        it 'should call Examinationroom with room name' do
        Room.should_receive(:search).with('1')
        Room.search('1')
        end
    end
end
