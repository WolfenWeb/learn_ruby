def ftoc(temp)
  temp -= 32.0
  temp * 5.0 / 9.0
end

def ctof (temp)
  temp *= 9.0 / 5.0
  temp + 32.0
end
