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

$locations = []
$choices_made = []
$strange_lights = false
$flower_taken = false
$gear_taken = false

def start
  system "clear" or system "cls"
  puts "Welcome to Makalu"
  puts "------------------"
  puts "You awake to nightfall on the top of a tall mountain and are located just"
  puts "below the peak. You look around you and find that there are three objects"
  puts "you can make out through the falling snow: "
  $locations.push('start')
  decision_reminder
  decision("Candle in the distance", "Path around the mountain", "Bridge to the far peak")
  choice = decision_made()
  while true

    case choice
    when '1'
      mystery_candle()
    when '2'
      puts "There appears to be a small gap between the rocks that you"
      puts "might be able to slip through to the other side of the peak."
      puts "You wedge yourself through the passage and turn the corner."
      puts "\n"
      walk_around()
    when '3'
      bridge()
    when 'help'
      $choices_made.pop
      decision("Candle in the distance", "Path around the mountain", "Bridge to the far peak")
      choice = decision_made()
    when 'exit'
      puts "exiting..."
      exit(0)
    else
      $choices_made.pop
      print 'Please enter one of the options listed.', "\n"
      choice = decision_made()
    end

  end

  #print_choices_made(choices_made)

end

def decision_reminder
  puts "\n"
  puts "----------------------------------------------------------------------"
  puts "(~) this symbol indicates that a decision needs to be made to continue"
  puts "if you need a reminder of the possible options, type 'help'"
  puts "if you would like to quit at any point type 'exit'"
  puts "----------------------------------------------------------------------"
  puts "\n"
end

def decision(*options)
  print "\n"
  i = 1
  options.each do |option|
    print i, ") ", option, "\n"
    i += 1
  end
  print "\n"
end

def decision_made()
  print "(~)"
  decision = gets.chomp
  $choices_made.push(decision)
  print "\n"
  system "clear" or system "cls"
  return decision
end

def print_array(locations, choices)
  a = 0
  i = 1
  while a < locations.length
    print "Turn " , i, ": ", locations[a], ", choice-made: ", choices[a], "\n"
    i += 1
    a += 1
  end
end

def beginning
  $locations.push('beginning')
  puts "You find yourself right where you began... Strange."
  decision("Candle in the distance", "Path around the mountain", "Bridge to the far peak")
  choice = decision_made()

  while true

    case choice
    when '1'
      mystery_candle()
    when '2'
      walk_around()
    when '3'
      bridge()
    when 'help'
      $choices_made.pop
      decision("Candle in the distance", "Path around the mountain", "Bridge to the far peak")
      choice = decision_made()
    when 'exit'
      puts "exiting..."
      exit(0)
    else
      $choices_made.pop
      print 'Please enter one of the options listed.', "\n"
      choice = decision_made()
    end
  end

end

def walk_around
  $locations.push('walk_around')
  puts "You notice that there is a cave entrance on this side of the mountain"
  puts "as well as a somewhat clear path that looks like it could lead to the mountain's summit."
  decision("Turn back", "Venture into the Cave", "Attempt to reach the summit")
  choice = decision_made()

  while true

    case choice
    when '1'
      beginning()
    when '2'
      puts "You enter the opening of the cave, notice it is very dark and scary."
      puts "A moment of doubt enters you mind."
      puts "\n"
      cave()
    when '3'
      summit()
    when 'help'
      $choices_made.pop
      decision("Turn back", "Venture into the Cave", "Attempt to reach the summit")
      choice = decision_made()
    when 'exit'
      puts "exiting..."
      exit(0)
    else
      $choices_made.pop
      print 'Please enter one of the options listed.', "\n"
      choice = decision_made()
    end

  end

end

def beginning
  $locations.push('beginning')
  puts "You find yourself right where you began... Strange."
  decision("Candle in the distance", "Path around the mountain", "Bridge to the far peak")
  choice = decision_made()

  while true

    case choice
    when '1'
      mystery_candle()
    when '2'
      walk_around()
    when '3'
      bridge()
    when 'help'
      $choices_made.pop
      decision("Candle in the distance", "Path around the mountain", "Bridge to the far peak")
      choice = decision_made()
    when 'exit'
      puts "exiting..."
      exit(0)
    else
      $choices_made.pop
      print 'Please enter one of the options listed.', "\n"
      choice = decision_made()
    end
  end

end

def mystery_candle
  $locations.push('mystery_candle')
  if $flower_taken == false
    puts "As you approach the mysterious candle, you notice it sits atop a small platform"
    puts "that appears to have been carved into the mountainside. Aside the candle, lays"
    puts "a single purple orchid. Wonder if you should take it?"
    decision("Turn back", "Take Flower")
    choice = decision_made()

    while true

      case choice
      when '1'
        puts "You decide the flower is not worth taking, at least not yet, and head back."
        beginning()
      when '2'
        $flower_taken = true
        puts "You take the flower and gently place it in your shirt's pocket protector."
        puts "Looking Sylish! You decide there is nothing more to be done here and return"
        puts "to where you woke up."
        puts "\n"
        beginning()
      when 'help'
        $choices_made.pop
        decision("Turn back", "Venture into the Cave", "Attempt to reach the summit")
        choice = decision_made()
      when 'exit'
        puts "exiting..."
        exit(0)
      else
        $choices_made.pop
        print 'Please enter one of the options listed.', "\n"
        choice = decision_made()
      end

    end

  else
    puts "You have already taken the flower. You decide there is nothing more to"
    puts "be done here and return to where you woke up."
    decision("Turn back")
    choice = decision_made()
    beginning()
  end

end

def bridge
  $locations.push('bridge')
  puts "Even from a distance, the wind whistles as it pushes the bridge"
  puts "back and forth. The amount of movement causes a moment of hesitation as you"
  puts "put your foot down upon the first board. You slowly make it across the bridge, being"
  puts "extra careful not to look down on your way across. An audible sigh of relief exhales"
  puts "from your mouth as you make it to the other side. You look onward to see what resembles"
  puts "an old mining shaft up ahead."
  decision("Turn back", "Enter the Mining Shaft!")
  choice = decision_made()

  while true

    case choice
    when '1'
      beginning()
    when '2'
      mining_shaft()
    when '3'
      easter_egg()
    when 'help'
      $choices_made.pop
      decision("Turn back", "Enter the Mining Shaft!")
      choice = decision_made()
    when 'exit'
      puts "exiting..."
      exit(0)
    else
      $choices_made.pop
      print 'Please enter one of the options listed.', "\n"
      choice = decision_made()
    end

  end

end

def cave
  $locations.push('cave')
  puts "As you enter deeper and deeper into the cave you notice that it is"
  puts "becoming harder and harder to see. You can vaguely make out a fork"
  puts "in the distance. How suprising... Do you turn back, or venture further"
  puts "into the cave?"
  decision("Turn back", "Take the left fork", "Take the right fork")
  choice = decision_made()

  while true

    case choice
    when '1'
      walk_around()
    when '2'
      climbing_gear()
    when '3'
      stumble()
    when 'help'
      $choices_made.pop
      decision("Turn back", "Take the left fork", "Take the right fork")
      choice = decision_made()
    when 'exit'
      puts "exiting..."
      exit(0)
    else
      $choices_made.pop
      print 'Please enter one of the options listed.', "\n"
      choice = decision_made()
    end

  end

end

def climbing_gear
  $locations.push('cave_left_fork')
  puts "You take the left fork and stumble across a pile of climbing gear."
  puts "How fortunate... Do you take some? As you contemplate this difficult"
  puts "decision, you realize there is a convient short cut out of the cave."
  decision("Exit the cave", "Take the climbing gear")
  choice = decision_made()

  while true

    case choice
    when '1'
      walk_around()
    when '2'
      puts "You're not greedy, you take some climbing gear but leave most of it"
      puts "behind for other fateful travellers to stumble upon. Having nothing left"
      puts "to do, you leave the cave through the short cut."
      puts "\n"
      $gear_taken = true
      walk_around()
    when 'help'
      $choices_made.pop
      decision("Exit the cave", "Take the climbing gear")
      choice = decision_made()
    when 'exit'
      puts "exiting..."
      exit(0)
    else
      $choices_made.pop
      print 'Please enter one of the options listed.', "\n"
      choice = decision_made()
    end

  end

end

def stumble
    $locations.push('cave_right_fork')
    puts "You take the right fork and take a few steps further into the darkness."
    puts "Unfortunately, you place a step right ontop of a rock and roll your ankle!"
    puts "This does not feel good; you attempt to stand but are unable."
    puts "This is the end of you I believe... bad luck!"
    death()
end

def summit
  $locations.push('summit')
  puts "You decide to climb to the summit. A brave decision!"
  puts "After much effort and shortage of breath, you claw your way"
  puts "to the top of the moutain. It's lonely here."
  puts "\n"
  puts "Strange, there are some mysterious lights that appear to be dancing in the"
  puts "night's sky. Maybe you could squint to see them a bit better?"
  decision("Turn back", "Squint in attempt to discern the lights")
  choice = decision_made()

  while true

    case choice
    when '1'
      puts "You climb back down the Mountain's summit."
      puts "\n"
      walk_around()
    when '2'
      $strange_lights = true
      puts "You squint as hard as your eyes can bear before they start to tear up."
      puts "It is in vain, the lights haven't seemed to take on any particular shape."
      puts "They also haven't noticed you. Time to climb back down?"
      puts "\n"
      walk_around()
    when 'help'
      $choices_made.pop
      decision("Turn back", "Enter the Mining Shaft!")
      choice = decision_made()
    when 'exit'
      puts "exiting..."
      exit(0)
    else
      $choices_made.pop
      print 'Please enter one of the options listed.', "\n"
      choice = decision_made()
    end

  end

end

def easter_egg
  puts "Even though Option three wasn't listed; Fortune favors the bold."
  puts "You sit and wait at the mining shaft's entrance for sometime,"
  puts "before you hear the roar of helicopter blades. Lucky you, they had come"
  puts "to investigate if the mine was worth reopening."
  puts "\n"
  puts "---------------------------------"
  ending
end

def ending
  puts "\n"
  puts "Congratulations! You've survived Makalu!"
  puts "\n"
  puts "Here are the locations you visited and the decisions you made!"
  puts "\n"
  print_array($locations, $choices_made)
  exit(0)
end

def death
  puts "\n"
  puts "You died... Bad luck :("
  puts "Maybe next time!"
  puts "\n"
  print_array($locations, $choices_made)
  exit(0)
end

def mining_shaft
  $locations.push('mining_shaft')
  puts "Enter mining shaft text here"
  decision("Turn back", "")
end

def trail
  $locations.push('trail')
  puts "Enter trail text here."
  decision("Turn back", "Continue down the trail")
  choice = decision_made()

  while true

    case choice
    when '1'
      puts "You walk back up the trail and enter the mining shaft once again."
      puts "\n"
      mining_shaft()
    when '2'
      if ($strange_lights)
        puts "Alien abduction text here"
        alien_abduction()
      else
        puts "some text here."
        old_ruins()
      end
    when 'help'
      $choices_made.pop
      decision("Turn back", "Enter the Mining Shaft!")
      choice = decision_made()
    when 'exit'
      puts "exiting..."
      exit(0)
    else
      $choices_made.pop
      print 'Please enter one of the options listed.', "\n"
      choice = decision_made()
    end

  end

end

def alien_abduction
  $locations.push('alien_abduction')
end

def old_ruins
  $locations.push('old_ruins')
end

def yeti_attack
  $location.push('yeti_attack')
end

def dangerous_cliff
  $locations.push('dangerous_cliff')
  puts "Dangerous cliff text here."
  decision("Turn back", "Attempt to scale down the mountain side")
  choice = decision_made()

  while true

    case choice
    when '1'
      puts "You make your way back up the path towards the old ruins"
      puts "\n"
      old_ruins()
    when '2'
      if ($gear_taken)
        puts "You remember that you have some climbing gear from the cave that you"
        puts "picked up. Smart decision... Time to use it to scale down the scary"
        puts "cliff."
        puts "\n"
        puts "Scaling down the mountain....."
        puts "\n"
        puts "You made it! It appears that there is a Sherpa Village in the distance!"
        puts "You're saved!!!!"
        puts "\n"
        ending()
      else
        puts "You attempt to scale down the cliff"
        puts "\n"
        puts "Scaling down the mountain....."
        puts "\n"
        puts "Oh no! Your hand slipped and you fell down the cliff to your death!"
        puts "\n"
        death()
      end
    when 'help'
      $choices_made.pop
      decision("Turn back", "Attempt to scale down the mountain side")
      choice = decision_made()
    when 'exit'
      puts "exiting..."
      exit(0)
    else
      $choices_made.pop
      print 'Please enter one of the options listed.', "\n"
      choice = decision_made()
    end

  end
end

start()
