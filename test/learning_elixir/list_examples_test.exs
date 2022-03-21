defmodule ListExamplesTest do
  use ExUnit.Case

  describe "destructure_list" do
    test "it returns the first n elements of the list" do
      a = ListExamples.take_first_n([1, 2, 3, 4, 5], 3)

      assert a == [1, 2, 3]
    end

    test "it returns the first element if n is not specified" do
      a = ListExamples.take_first_n([1, 2, 3, 4, 5], 1)

      assert a == [1]
    end

    test "it returns an empty list if n is 0" do
      a = ListExamples.take_first_n([1, 2, 3, 4, 5], 0)

      assert a == []
    end

    test "it should throw if n is a negative integer" do
      err =
        try do
          ListExamples.take_first_n([1, 2, 3, 4, 5], -2)
        catch
          e -> e
        end

      assert err == "n must be a positive integer"
    end

    test "it should throw if n is not an integer" do
       err =
        try do
          ListExamples.take_first_n([1, 2, 3, 4, 5], 1.1)
        catch
          e -> e
        end

        assert err == "n must be a positive integer"
    end
  end
end
