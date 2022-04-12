class Card
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
    return @value if @faceup
  end
end