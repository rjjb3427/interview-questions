# October 3, 2013 — AngelList
#
# The problem was to generate HTML of a multiplication table give the width and height. Once
# I understood what he meant, this was super easy. I added the newlines and indentation shortly
# after starting so it was easier for us to check my work.
#
# It took me the longest to figure out all I had to do was multiply x and y together (+1) to
# get a given cell's value. That wasn't super clear when I got the problem.
#
# He said the goal was to see that I could code. I think seeing tons of open source stuff on
# GitHub and talking about it is a better use of time than coding something comepletly useless.
# Granted iteration and constructing HTML is something you do a lot in web programming, I think
# it was pretty silly.
#
# I solved it in about 2 minutes. Most of the time was spent understanding what he meant by
# "multiplication table".

def table(x, y)
  output = "<table>\n"

  x.times do |i|
    output << "  <tr>\n"
    y.times do |j|
      output << "    <td>#{(i + 1) * (j + 1)}</td>\n"
    end
    output << "  </tr>\n"
  end

  output << '<table>'
  output
end

puts table(4, 4)
