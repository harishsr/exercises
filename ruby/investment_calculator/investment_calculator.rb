class InvestmentCalculator

  attr_accessor :annual_contribution, :period

  def initialize(annual_contribution, period)
    @annual_contribution = annual_contribution
    @period = period
  end

  def final_value
    total_eventual_value = 0
    (1...period).each do |num|
      total_eventual_value += principal_plus_interest_for(num)
    end
    total_eventual_value
  end

  def contribution_plus_interest_for(timeframe)
    annual_contribution * 1.08**timeframe
  end

  def total_contribution
    annual_contribution * period
  end

  # def total_interest_earned
  # end

end

puts InvestmentCalculator.new(1000, 1).final_value
