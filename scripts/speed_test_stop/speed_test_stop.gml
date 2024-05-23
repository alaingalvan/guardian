function speed_test_stop() {
  // Returns in milliseconds.  1000 milliseconds = 1 second
  return current_time - global.__speed__test__start__;
}
