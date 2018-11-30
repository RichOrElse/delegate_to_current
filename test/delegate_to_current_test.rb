require "test_helper"

class DelegateToCurrentTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::DelegateToCurrent::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
