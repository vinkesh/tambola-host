class Master
  def initialize()
    @displayed_number = []
    @interval = 1
    @rgen = Random.new
  end

  def printx(number)
    if(@displayed_number.size % 10 == 0)
      puts ""
    end
    print " #{number.to_s.rjust(2)}"
  end

  def start()
    while(@displayed_number.size != 99) do
      new_number = @rgen.rand(1..99)
      unless @displayed_number.include? new_number
        @displayed_number.push(new_number)
        system("say #{new_number}")
        printx(new_number)
        sleep(@interval)
      end
    end
  end
end

Master.new.start

