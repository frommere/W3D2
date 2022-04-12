class Card
  attr_reader :faceup
  
  def initialize(value)
    @value = value
    # should be false
    @faceup = true
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