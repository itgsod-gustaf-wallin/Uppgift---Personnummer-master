def valid_pnr?(pnr:)
  pnr = pnr.split("").map { |s| s.to_i }
  pnr.delete_at(6)
  t = 0
  i = 0
  resultat = 0
  while t < 4
    dubbel = pnr[i] * 2
    if dubbel >= 10
      resultat += dubbel - 9
    else
      resultat += dubbel
    end
    resultat += pnr[i.next]
    t += 1
    i = i.next
  end
  dubbel = pnr[i] * 2
  if dubbel > 9
    resultat += dubbel - 9
  else
    resultat += dubbel
  end
  p resultat
end

valid_pnr?(pnr: "970829-9616")