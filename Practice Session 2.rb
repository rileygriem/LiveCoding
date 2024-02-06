live_loop :practiceSession do
  ##| stop
  sample :bd_haus
  use_synth :bass_foundation
  
  play choose(chord(:C3, :minor)), release: 1
  sleep 1
  
  play choose(chord(:C4, :minor)), release: 0.5
  sleep 0.5
  
end

live_loop :bells do
  ##| stop
  use_synth :pretty_bell
  
  play choose(chord(:C3, :minor)), release: 0.2, cutoff: rrand_i(90,120)
  sleep 0.25
  
end

live_loop :undertones do
  ##| stop
  sample :ambi_glass_hum, release: 2, rate: 1
  sample :ambi_glass_hum, release: 2, rate: -0.5
  
  sleep 1
  
end
