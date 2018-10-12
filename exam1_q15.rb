tom = :drum_tom_lo_hard
bass = :drum_bass_hard
drums_1 = (ring bass, bass, tom, tom)
drums_2 = (ring bass, tom, bass, tom)

loop do
  r = dice(2)
  use_this = drums_1 if r == 1
  use_this = drums_2 if r == 2
  
  # The problem with the original loop do is that
  # it will forever be stuck inside this loop do.
  # Therefore, once use_this is assigned to a value,
  # it will never be reassigned!
  
  # We need a way to exit the loop, but also
  # play every note in the ring.
  # Because our ring is length of 4, the solution
  # is pretty simple -- we only need to tick 4 times,
  # then go back and select either drums_1 or drums_2
  # at random.
  
  # loop do
  4.times do
    sample use_this.tick
    sleep 0.25
  end
end
