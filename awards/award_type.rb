class AwardType
  attr_reader :award

  def initialize(award)
    @award = award
  end

  def update
    update_attributes
  end

  private

  def update_attributes
    raise NotImplementedError, 'Implement this method in a child class'
  end
end
