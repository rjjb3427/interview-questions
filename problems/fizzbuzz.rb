# Worst programming problem of all time.
#
# I guess it can weed about people that can't program at all, but you've made a huge mistake
# if you ever have to ask someone this. They should never have gotten in the door.
#
# http://en.wikipedia.org/wiki/Fizz_buzz

(1..100).each do |i|
  fizz = i % 3 == 0 ? 'Fizz' : nil
  buzz = i % 5 == 0 ? 'Buzz' : nil
  puts "#{i} #{fizz}#{buzz}"
end
