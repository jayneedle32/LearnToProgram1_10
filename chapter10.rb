def grandfatherClock

numberofChimes = Time.now.hour
numberofChimes.times { puts "DONG!" }

end

grandfatherClock


#----------------------------------------------------------

def log descriptionOfBlock, &block
    puts ''+descriptionOfBlock+' " starts now."'
    value_returned = block.call
    puts ''+descriptionOfBlock+' " has ended."'
    puts value_returned
end

log 'outer block' do

log 'some little block' do
5
end

log 'some little block' do
"I like thai food"
end

end
