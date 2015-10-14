# 2015-10-12 DailyProgrammer challenge
# have a bag include the pieces O I S Z L J and T
# take each out of the bag randomly until empty and refill the bag
# print out 50 of these pieces.

DEFAULT_BAG = ['O', 'I', 'S', 'Z', 'L', 'J', 'T']
current_bag = []
def fill_bag(bag)
  DEFAULT_BAG.each do |i|
    bag << i
  end
end

fill_bag(current_bag)

50.times do
  current_bag.shuffle!
  if current_bag != []
    print current_bag.pop
  else
    fill_bag(current_bag)
    print current_bag.pop
  end
end
