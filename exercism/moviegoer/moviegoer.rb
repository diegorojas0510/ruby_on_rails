# This is a custom exception that you can use in your code
class NotMovieClubMemberError < RuntimeError
end

class Moviegoer
  def initialize(age, member: false)
    @age = age
    @member = member
  end

  def ticket_price
    @age >= 60 ? 10 : 15
    # raise 'Please implement the Moviegoer#ticket_price method'
  end

  def watch_scary_movie?
    @age >= 18
    # raise 'Please implement the Moviegoer#watch_scary_movie method'
  end

  # Popcorn is 🍿
  def claim_free_popcorn!
    if !@member # si @member es falso
      raise NotMovieClubMemberError
    else
      '🍿'
    end
    # raise 'Please implement the Moviegoer#claim_free_popcorn method'
  end
end
