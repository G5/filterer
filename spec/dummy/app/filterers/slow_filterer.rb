class SlowFilterer < Filterer::Base
  sort_option 'name', default: true, tiebreaker: true
  sort_option /field_([0-9]+)/, -> (query, matches, filterer) {
    query.where(name: matches[1])
  }

  def starting_query
    Person
  end

  def param_name(x)
    results.where(name: x)
  end

  def param_a(x)
    results
  end

  def param_b(x)
    results
  end

  def param_c(x)
    results
  end

  def param_d(x)
    results
  end

  def param_e(x)
    results
  end
end
