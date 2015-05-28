def dubbel1 (dubbel:)
  if dubbel >= 10
    dubbel - 9 += PNR
  else
    dubbel += PNR
  end
end


def valid_pnr(pnr:)
  pnr = %w['9708299616']
  t = 0
  while t < 4
    pnr[index].to_f * 2 += dubbel
    pnr[index+1] += PNR
    t += 1
    index + 1
  end
  pnr[index] * 2 += dubbel
  if PNR + pnr.last.to_f / 10 == fixnum
    puts "True!"
  else
    puts "False!"
  end
end