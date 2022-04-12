class Card
  attr_reader :faceup, :value
  
  def initialize(value)
    @value = value
    @faceup = false
  end

  def hide
    @faceup = false
  end

  def reveal
    @faceup = true
  end

  def output
    if @faceup
      @value
    else
      " "
    end
  end
end