defmodule TestTest do
  use ExUnit.Case
  doctest Test

  test "i2c interface exists" do
    assert File.exists?("/dev/i2c-0")
    assert File.exists?("/dev/i2c-2")
  end

  test "the virtual serial port ttyGS0 exists" do
    assert File.exists?("/dev/ttyGS0")
  end

  test "/boot is mounted" do
    assert File.exists?("/boot/MLO")
  end
end
