# Top Level
class Foo
end

module Bar
end

# Nested
class Foo
  module Baz
  end
end

class Foo
  class Raz
  end
end

module Bar
  module Baz
  end
end

module Bar
  class Raz
  end
end

# Nested With Comments
class Foo
  # This is a comment
  module Baz
  end
end

class Foo
  # This is a comment
  class Raz
  end
end

module Bar
  # This is a comment
  module Baz
  end
end

module Bar
  # This is a comment
  class Raz
  end
end

# Namespaced
module Foo::Taz
end

class Bar::Saz
end

# As a comment
# class Foo
