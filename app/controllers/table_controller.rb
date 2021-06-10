class TableController < ApplicationController

  # Creates matrices of elements for each column
  def index
    file = File.read("db/data.json")
    @elements = JSON.parse(file)
    @periodicTable = Array.new(10) {Array.new(18)}
    @collumsLegend = Array.new
    @collumsLegend = [nil, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R']
    @elements["order"].each do |element|
      @periodicTable[@elements[element]["ypos"] - 1][@elements[element]["xpos"] - 1] = element
    end
  end

  def show
    file = File.read("db/data.json")
    elements = JSON.parse(file)
    @element = elements[ params[:id] ]
  end
end