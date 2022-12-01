use_bpm 60

#https://mehackit.org/en/courses/music_programming_basics/03-write-a-bass-riff/03-exercise-write-a-looping-bassline/
live_loop :drum do
  #drum_2
  #drum_1
  #cymbals
  sleep 0
end


live_loop :i_chord do
  play_one
  play_six
  play_five
  
end

def drum_1()
  4.times do
    sample :drum_bass_hard, amp: 1
    sleep 1.75
    sample :drum_bass_hard, amp: 1
    sleep 0.25
    sample :drum_bass_hard, amp: 1
    sleep 2
    
  end
end


def drum_2()
  4.times do
    sample :drum_bass_hard, amp: 1
    sleep 1
  end
end

live_loop :x do
  drum_and_cymbals
end

def drum_and_cymbals()
  sample :drum_bass_hard, release: 1
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


def cymbals()
  4.times do
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.5
  end
  4.times do
    sample :drum_cymbal_closed, amp: 0.5
    sleep 0.25
  end
  sample :drum_cymbal_pedal, amp: 0.33
  sleep 0.5
  sample :drum_cymbal_pedal, amp: 0.33
  sleep 0.5
end


def play_one()
  2.times do
    play chord(:F5, :major), release:4
    sleep 4
  end
  
end


def play_six()
  
  2.times do
    play chord(:d6, :minor), release: 4, amp: 0.75
    sleep 4
  end
end

def play_five()
  
  2.times do
    play chord(:Bb5, :major), release: 4, amp: 0.75
    sleep 4
  end
end

