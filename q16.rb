live_loop :p1, sync: :piano_part do
  tick :pc
  pp = (ring :C5, :D5, :E5)
  play pp.look(:pc)
  sleep 2
end

live_loop :blade_part do
  6.times do
    tick :bc
    bp = (ring :G4, :A4, :B4)
    play bp.look(:bc)
    sleep 1
  end
  cue :piano_part
end
