defmodule Chapter10Test do
  use ExUnit.Case

  test "lists primes for 2" do
    assert Chapter10.primes(2) == [2]
  end

  test "lists primes for 199" do
    assert Chapter10.primes(199) == [
             2,
             3,
             5,
             7,
             11,
             13,
             17,
             19,
             23,
             29,
             31,
             37,
             41,
             43,
             47,
             53,
             59,
             61,
             67,
             71,
             73,
             79,
             83,
             89,
             97,
             101,
             103,
             107,
             109,
             113,
             127,
             131,
             137,
             139,
             149,
             151,
             157,
             163,
             167,
             173,
             179,
             181,
             191,
             193,
             197,
             199
           ]
  end
end
