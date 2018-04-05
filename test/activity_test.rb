require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
  def setup
    @act = Activity.new("Golf")
  end

  def test_it_exists
    assert_instance_of Activity, @act
  end

  def test_it_has_a_name
    assert_equal "Golf", @act.name
  end

  def test_participants_starts_as_empty_hash
    expected = Hash.new(0)
    assert_equal expected, @act.participants
  end

  def test_it_can_add_participants

  end

  def test_participant_attributes

  end

  def test_it_can_evaluate_costs

  end
end
