require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
  def setup
    @r = Reunion.new("Denver")
    @act_1 = Activity.new("Golf")
    @act_2 = Activity.new("Tennis")
  end

  def test_it_exists
    assert_instance_of Reunion, @r
  end

  def test_it_has_a_location
    assert_equal "Denver", @r.location
  end

  def test_it_has_activities_and_starts_empty
    expected = Hash.new(0)
    actual = @r.activities

    assert_equal expected, actual
  end

  def test_it_can_add_activities
    @act_1.add_participant("Pearl", 200)
    @act_1.add_participant("Heidi", 250)
    @act_1.add_participant("Matt", 150)
binding.pry
    expected = {"Golf" => 600}
    actual = @r.activities

    assert_equal expected, actual
  end
end
