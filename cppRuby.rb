require 'inline'

module Dice
  inline(:C) do |builder|
    builder.add_compile_flags '-x c++', '-std=c++14', '-lstdc++'
    builder.include '<random>'

    builder.prefix '
      // Seed with a real random value, if available
      static std::random_device r;
      // Choose a random mean between 1 and 6
      static std::default_random_engine e1(r());
      static std::uniform_int_distribution<int> uniform_dist(1, 6);'

    builder.c_singleton '
      VALUE roll(int count) {
          VALUE result = rb_ary_new2(count);
          for (int i = 0; i < count; ++i) {
              VALUE v = INT2NUM(uniform_dist(e1));
              rb_ary_store(result, i, v);
          }
          return result;
      }'
  end
end

# Print the outcome of three dice rolls
puts Dice.roll 3