require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
  def setup
    @r = Reunion.new
    @act_1 = Activity.new("Golf")
    @act_2 = Activity.new("Tennis")
  end
end
