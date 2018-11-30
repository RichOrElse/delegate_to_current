require "test_helper"

class DelegateToCurrentTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::DelegateToCurrent::VERSION
  end

  def test_time
    @now = DelegateToCurrent[::Time]
    assert ::Time.current.beginning_of_day, @now.beginning_of_day
  end

  def test_date
    @today = DelegateToCurrent[::Date]
    assert ::Date.current.beginning_of_week, @today.beginning_of_week
  end
end
