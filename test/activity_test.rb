require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'
require 'pry'

class ActivityTest < Minitest::Test
  def setup
    @act = Activity.new("Golf")
  end

  def test_it_exists
    assert_instance_of Activity, @act
  end

  def test_it_has_a_name
    assert_equal "Golf", @act.activity_name
  end

  def test_participants_starts_as_empty_hash
    expected = Hash.new(0)
    actual = @act.participants

    assert_equal expected, actual
  end

  def test_it_can_add_participants
    @act.add_participant("Pearl", 200)

    expected = {"Pearl" => 200}
    actual = @act.participants

    assert_equal expected, actual
  end

  def test_participant_attributes
    @act.add_participant("Pearl", 200)

    expected = "Pearl"
    actual = @act.participants.keys[0]

    assert_equal expected, actual

    expected = 200
    actual = @act.participants["Pearl"]

    assert_equal expected, actual
  end

  def test_it_can_evaluate_costs
    @act.add_participant("Pearl", 200)
    @act.add_participant("Heidi", 250)

    expected = 450
    actual = @act.total_cost

    assert_equal expected, actual
  end

  def test_it_can_split_cost_of_an_activity
    @act.add_participant("Pearl", 200)
    @act.add_participant("Heidi", 250)

    expected = 225
    actual = @act.split_total_cost

    assert_equal expected, actual
  end

  def test_it_can_calculate_over_and_underpayment
    @act.add_participant("Pearl", 200)
    @act.add_participant("Heidi", 250)

    expected = {"Pearl" => -25, "Heidi" => 25}
    actual = @act.calculate_payment_offset
binding.pry
    assert_equal expected, actual
  end
end
