# Welcome to Sonic Pi
use_bpm 100

$g_release=2

#definitions
#use_synth :dpulse
use_synth :zawa


def drum_1()
  
  sample :drum_bass_hard, amp: 1
  sleep 1.75
  sample :drum_bass_hard, amp: 1
  sleep 0.25
  sample :drum_bass_hard, amp: 1
  sleep 2
  
  
end

def cymbals()
  #4 secs
  4.times do
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.5
  end
  #3 secs
  4.times do
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.25
  end
  #1 more sec
  sample :drum_cymbal_pedal, amp: 0.33
  sleep 0.5
  sample :drum_cymbal_pedal, amp: 0.33
  sleep 0.5
end

def drum_and_cymbals()
  sample :drum_bass_hard, release: 1
  #1
  2.times do
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.5
  end
  sample :drum_bass_hard, release: 0.5
  2.times do
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.5
  end
  
  
end


def play_six_low(arp)
  
  if arp
    play_pattern chord(:d6, :minor), release: $g_release, amp: 0.75
    sleep 4
  else
    
    play chord(:d5, :minor), release: $g_release, amp: 0.75
    sleep 4
  end
  
  
end




def mel
  use_synth :dpulse
  play :g5
  sleep 1
  play :g5
  sleep 0.5
  play :a5
  sleep 0.5
  play :g5
  sleep 1
  play :c6
  sleep 1
  
end



###3 new chords

def new_one()
  play chord(:C5, :major), release: 1
  sleep 1
  play chord(:C5, :major), release: $g_release
  sleep 1
  play chord(:C5, :major), release: $g_release
  sleep 1
  play chord(:C5, :major), release: $g_release
  sleep 1
end

def new_six()
  play chord(:A5, :minor), sustain: 1, release: $g_release
  sleep 4
end

def new_four()
  play chord(:F5, :major), release: 1
  sleep 1
  play chord(:F5, :major), release:1
  sleep 1
  play chord(:F5, :major), release: 0.5
  sleep 1
  play chord(:F5, :major), release: 0.5
  sleep 1
  
end

def new_five()
  play chord(:G5, :major), sustain: 0.5, release: $g_release
  sleep 2
  play chord(:G5, :major), sustain: 0.5, release: $g_release
  sleep 2
end

def intro_sequence()
  
  4.times do
    sleep 4
  end
  
  mel
  3.times do
    drum_1
  end
  mel
  play :d6
  sleep 2
  play :e6
  sleep 2
  
end


define :chorus do
  
  
  play :g6
  sleep 1
  play :g6
  sleep 0.5
  play :f6
  sleep 0.5
  play :g6
  sleep 1
  play :a6
  sleep 1
  
  play :g6
  sleep 0.5
  play :g6
  sleep 0.5
  play :g6
  sleep 0.5
  play :f6
  sleep 0.5
  
  play :g6
  sleep 1
  play :c7
  sleep 1
  
  play :g6
  sleep 0.5
  play :g6
  sleep 0.5
  play :g6
  sleep 0.5
  play :f6
  sleep 0.5
  
  play :g6
  sleep 1
  play :a6
  sleep 1
  
  
  play :g6
  sleep 0.5
  play :g6
  sleep 0.5
  play :g6
  sleep 0.5
  play :f6
  sleep 0.5
  
  play :g6
  sleep 1
  play :c7
  sleep 1
  
  
end

define :verse_1 do
  
  
  #i am the root
  play :g5
  sleep 1
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 1
  
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  
  
  play :c5
  sleep 1
  play :c5
  sleep 1
  play :c5
  sleep 1
  
  sleep 1
  
  
  
  #all the nodes to my left...
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 1
  play :g5
  sleep 1
  play :g5
  sleep 1
  
  
  
  play :c5
  sleep 0.5
  play :c5
  sleep 0.5
  play :c5
  sleep 1
  play :c5
  sleep 1
  
  
  sleep 1
  
  
  #all the nodes to my left...
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 1
  play :g5
  sleep 1
  play :g5
  sleep 1
  
  
  
  play :c5
  sleep 0.5
  play :c5
  sleep 0.5
  play :c5
  sleep 1
  play :c5
  sleep 1
  
  
  sleep 1
  
  #only have one child on either side
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 1
  play :g5
  sleep 1
  play :g5
  sleep 1
  
  play :c5
  sleep 1
  play :c5
  sleep 0.5
  play :c5
  sleep 0.5
  play :c5
  sleep 1
  sleep 1
  
end


define :verse_2 do
  
  
  #i am the root
  play :g5
  sleep 1
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 1
  
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  
  
  play :c5
  sleep 1
  play :c5
  sleep 1
  play :c5
  sleep 1
  
  sleep 1
  
  
  
  #preorder traversal
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play:g5
  sleep 0.5
  play :g5
  sleep 1
  play :g5
  sleep 1
  
  
  
  play :c5
  sleep 1
  play :c5
  sleep 1
  play :c5
  sleep 2
  
  #follow root left right
  
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 1
  play:g5
  sleep 1
  play :g5
  sleep 1
  
  
  play :c5
  sleep 1
  play :c5
  sleep 1
  play :c5
  sleep 2
  
  #use to get a prefix
  #preorder traversal
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play:g5
  sleep 0.5
  play :g5
  sleep 1
  play :g5
  sleep 1
  
  
  
  play :c5
  sleep 1
  play :c5
  sleep 1
  play :c5
  sleep 2
  
  
end

define :verse_3 do
  
  #inorder traversal
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 1
  play :g5
  sleep 1
  
  
  #start left tree
  play :c5
  sleep 1
  play :c5
  sleep 1
  play :c5
  sleep 1
  
  sleep 1
  
  
  #left root right un-
  play :g5
  sleep 1
  play :g5
  sleep 1
  play :g5
  sleep 1
  play :g5
  sleep 1
  
  #til we cease
  
  play :c5
  sleep 1
  play :c5
  sleep 1
  play :c5
  sleep 1
  
  sleep 1
  
  
  #in increasing order
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 1
  play :g5
  sleep 1
  
  play :c5
  sleep 1
  
  play :c5
  sleep 1
  
  play :c5
  sleep 1
  
  sleep 1
  
  #sorted order
  
  play :g5
  sleep 1
  play :g5
  sleep 1
  play :g5
  sleep 1
  play :g5
  sleep 1
  
  #its yielding
  
  play :c5
  sleep 1
  
  play :c5
  sleep 1
  
  play :c5
  sleep 1
  
  sleep 1
  
  
end



define :verse_4 do
  
  
  #what if we  de-
  play :g5
  sleep 1
  play :g5
  sleep 1
  play :g5
  sleep 1
  play :g5
  sleep 1
  
  #lete the tree
  play :c5
  sleep 1
  play :c5
  sleep 1
  play :c5
  sleep 1
  
  sleep 1
  
  #postorder traversal
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 1
  play :g5
  sleep 1
  
  
  #start left-ly
  play :c5
  sleep 1
  play :c5
  sleep 1
  play :c5
  sleep 1
  
  sleep 1
  
  #follow with the
  play :g5
  sleep 1
  play :g5
  sleep 1
  play :g5
  sleep 1
  play :g5
  sleep 1
  
  #right sub tree
  play :c5
  sleep 1
  play :c5
  sleep 1
  play :c5
  sleep 1
  
  sleep 1
  
  #get to the root yous
  play :g5
  sleep 1
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :g5
  sleep 1
  
  play :g5
  sleep 1
  
  
  #could de lete
  play :c5
  sleep 1
  play :c5
  sleep 1
  play :c5
  sleep 1
  
  sleep 1
  
  
end


#MUSIC

in_thread do
  
  3.times do
    new_one
    new_five
    new_six
    new_four
    
  end
  
end

intro_sequence


in_thread do
  use_synth :zawa
  
  in_thread do
    2.times do
      drum_1
    end
    2.times do
      cymbals
    end
    
    8.times do
      drum_and_cymbals
    end
    
    2.times do
      drum_1
    end
    2.times do
      cymbals
    end
  end
  
  5.times do
    new_one
    new_five
    new_six
    new_four
  end
  puts "hath ended the beats/chords"
end

sleep 16
use_synth :dpulse
chorus
puts "post chorus"

puts "verse1"
verse_1

puts "new verse"
in_thread do
  in_thread do
    verse_2
  end
  4.times do
    drum_1
  end
  2.times do
    cymbals
  end
  
end
#chords
puts "chords for new verse"
#we get 2 bonus chords after it ends
4.times do
  use_synth :zawa
  new_one
  
  new_five
  
  new_six
  
  new_four
  
end



in_thread do
  puts "v2 and chorus stuff"
  3.times do
    use_synth :zawa
    new_one
    new_five
    new_six
    new_four
    
  end
  
end
puts "chorus here we come againnn"
use_synth :dpulse
chorus

in_thread do
  4.times do
    drum_1
  end
  2.times do
    drum_and_cymbals
  end
end
verse_3

in_thread do
  4.times do
    use_synth :zawa
    new_one
    new_five
    new_six
    new_four
    
  end
end
verse_4

in_thread do
  in_thread do
    2.times do
      use_synth :zawa
      new_one
      new_five
      new_six
      new_four
      
    end
    
  end
  2.times do
    drum_1
  end
  
end
puts "final chorus"
use_synth :dpulse
chorus

puts "outro?"
use_synth :zawa
new_one
new_five
new_one

use_bpm 80
use_synth :dpulse
play_pattern chord(:c5, :major)


