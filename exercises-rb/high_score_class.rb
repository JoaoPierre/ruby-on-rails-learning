class HighScores
  def initialize(scores)
    @scores = scores
    @scores_min_max = scores.sort
  end

  attr_reader :scores

  def latest
    @scores.last
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores_min_max.last(3).reverse
  end

  def latest_is_personal_best?
    personal_best == latest
  end
end
