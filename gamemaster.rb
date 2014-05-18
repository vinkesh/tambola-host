displayed_number = []
rgen = Random.new

while(displayed_number.size != 99) do
  new_number = rgen.rand(1..99)
  unless displayed_number.include? new_number
    displayed_number.push(new_number)
    system("say #{new_number}")
    puts new_number
    sleep(2)
  end
end