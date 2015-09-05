def grandfatherClock

numberofChimes = Time.now.hour
numberofChimes.times { puts "DONG!" }

end

grandfatherClock

#----------------------------------------------------------

$depth = 0
$space = '  '

def log descriptionOfBlock, &block
    puts $space*$depth + ''+descriptionOfBlock+' starts now.'
    $depth = $depth + 1
    value_returned = block.call
    $depth = $depth - 1
    puts $space*$depth + ''+descriptionOfBlock+' has ended.'
    puts $space*$depth + value_returned.to_s
end

log 'outer block' do

log 'some little block' do
5
end

log 'some little block' do
"I like thai food"
end

end
