module Enumerable
  # Thanks StackOverflow users!
  # http://stackoverflow.com/questions/7749568/how-can-i-do-standard-deviation-in-ruby

  def mean
    inject(:+) / length.to_f
  end
  alias average mean
  def sample_variance
    m = mean
    sum = inject(0) { |accum, i| accum + (i - m)**2 }
    sum / (length - 1).to_f
  end

  def standard_deviation
    Math.sqrt(sample_variance)
  end
end
