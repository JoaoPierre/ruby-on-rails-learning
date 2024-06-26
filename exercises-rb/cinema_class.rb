class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  attr_reader :age, :member

  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    (age >= 60) ? 10.00 : 15.00
  end

  def watch_scary_movie?
    age >= 18
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    raise NotMovieClubMemberError unless member
    "🍿"
  end
end
