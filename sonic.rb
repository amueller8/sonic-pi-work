# Welcome to Sonic Pi
use_bpm 90

$g_release=2

#definitions
use_synth :dpulse


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

def play_one()
  play chord(:F5, :major), release: $g_release
  sleep 4
  
end

def play_six()
  
  play chord(:d6, :minor), release: $g_release, amp: 0.75
  sleep 4
  
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


def play_four()
  
  play chord(:Bb5, :major), release: $g_release, amp: 0.75
  sleep 4
  
end


def play_five()
  
  play chord(:C5, :major), release: $g_release, amp: 0.75
  sleep 4
  
end

def mel
  
  # Welcome to Sonic Pi
  
  
  
  play :g5, amp:1
  sleep 1
  play :g5
  sleep 0.5
  play :g5
  sleep 0.5
  play :f5
  sleep 1
  play :g5
  sleep 1
  
  play :f5
  sleep 1
  play :g5
  sleep 1
  play :a5
  sleep 1
  
  sleep 1
  
end

#music

in_thread do
  
  3.times do
    
    play_one
    play_five
    play_six_low(false)
    play_four
  end
  
  
end

2.times
4.times do
  sleep 4
end
mel
drum_1
4.times do
  drum_and_cymbals
end

