# Rules for If Statements
# 1) Every if-statement must have an else.
# 2) If the else function never runs than you should use a die function, in case it runs to bring out any errors.
# 3) Never nest if statements more than two deep and try to do them only one deep
# 4) Treat if statements like paragraphs, where each if-elsif-else grouping is like a set of sentences. Put blank lines before and after.
# 5) Your boolean tests should be simple, if they are complex move their calcs to variables earlier in the function.

# Rules for Loops
# 1) Use a while loop only to loop forever; which is probably never. ONLY applies to ruby.
# 2) Use a for loop for all other kinds of looping.

# Homework Game



def start
  puts "\n\n"
  puts "Welcome to Makalu"
  puts "------------------"
  puts "You awake on the top of a tall mountain"
  puts "and are located just below the peak."
  puts "You look around you and find that"
  puts "there are three objects you can make out"
  puts "through the falling snow: "
  choices_made = []
  decision_reminder
  decision("Candle in the distance", "Path around the mountain", "Bridge to the far peak")
  choice, choices_made = decision_made(choices_made)

  case choice
  when '1'
    print "Candle"
  when '2'
    print "Path"
  when '3'
    print 'Bridge'
  else
    print 'please '
  print_choices_made(choices_made)

end

def decision_reminder
  puts "--------------------"
  puts "(>) this symbol indicates that a decision needs to be made to continue"
  puts "if you need a reminder of the possible options, type 'help'"
  puts "--------------------"
end

def decision(*options)
  i = 1
  options.each do |option|
    print i, ") ", option, "\n"
    i += 1
  end
end

def Yeti_attack
end

def decision_made(array)
  print "(>)"
  decision = gets.chomp
  array.push(decision)
  return decision, array
end

def print_choices_made(array)
  array.each do |choice|
    i = 1
    print "Turn ", i, ": ", choice, "\n"
  end
end



start()
