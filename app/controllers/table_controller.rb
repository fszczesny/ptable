class TableController < ApplicationController

  # Creates matrices of elements for each column
  def index
    file = File.read("db/data.json")
    @elements = JSON.parse(file)
    @lineOne = Array.new(18)
    @lineTwo = Array.new(18)
    @lineTree = Array.new(18)
    @lineFour = []
    @lineFive = []
    @lineSix = Array.new(18)
    @lineSeven = Array.new(18)
    @lineEigth = Array.new(18)
    @lineNine = Array.new(18)
    @elements["order"].each_with_index do |element, i|
      # First Line
      if ((i+1) == 1)
        @lineOne.delete_at(0)
        @lineOne.insert(0, element)
      elsif ((i+1) == 2)
        @lineOne.delete_at(17)
        @lineOne.insert(17, element)
      # Second Line
      elsif ((i+1) == 3)
        @lineTwo.delete_at(0)
        @lineTwo.insert(0, element)
      elsif ((i+1) == 4)
        @lineTwo.delete_at(1)
        @lineTwo.insert(1, element)
      elsif (((i+1) >= 5) && ((i+1) <= 10))
        @lineTwo.delete_at((i+8))
        @lineTwo.insert((i+8), element)
      # Third Line
      elsif ((i+1) == 11)
        @lineTree.delete_at(0)
        @lineTree.insert(0, element)
      elsif ((i+1) == 12)
        @lineTree.delete_at(1)
        @lineTree.insert(1, element)
      elsif (((i+1) >= 13) && ((i+1) <= 18))
        @lineTree.delete_at(i)
        @lineTree.insert(i, element)
      # Fourth Line
      elsif (((i+1) >= 19) && ((i+1) <= 36))
        @lineFour.push(element)
      # Fifth Line
      elsif (((i+1) >= 37) && ((i+1) <= 54))
        @lineFive.push(element)
      # Sixth Line
      elsif ((i+1) == 55)
        @lineSix.delete_at(0)
        @lineSix.insert(0, element)
      elsif ((i+1) == 56)
        @lineSix.delete_at(1)
        @lineSix.insert(1, element)
      elsif (((i+1) >= 72) && ((i+1) <= 86))
        @lineSix.delete_at((i-68))
        @lineSix.insert((i-68), element)
      # Seventh Line
      elsif ((i+1) == 87)
        @lineSeven.delete_at(0)
        @lineSeven.insert(0, element)
      elsif ((i+1) == 88)
        @lineSeven.delete_at(1)
        @lineSeven.insert(1, element)
      elsif (((i+1) >= 104) && ((i+1) <= 118))
        @lineSeven.delete_at((i-100))
        @lineSeven.insert((i-100), element)
      # Eighth Line
      elsif (((i+1) >= 57) && ((i+1) <= 71))
        @lineEigth.delete_at((i-53))
        @lineEigth.insert((i-53), element)
      # Ninth Line
      elsif (((i+1) >= 89) && ((i+1) <= 103))
        @lineNine.delete_at((i-85))
        @lineNine.insert((i-85), element)
      end
    end
  end

  def show
    file = File.read("db/data.json")
    elements = JSON.parse(file)
    @element = elements[ params[:id] ]
  end
end
