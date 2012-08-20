module BoostStyleLambda
  class Base
    def method_missing name, *args
      Expression.new(self, name, args)
    end
  end
  class Argument < Base
    def initialize(n)
      @n = n
    end
    def to_proc
      ::Proc.new {|*args|
        args[@n - 1]
      }
    end
    def inspect
      "_#{@n}"
    end
  end
  class Expression < Base
    def initialize receiver, method_name, args
      @receiver = receiver
      @method_name = method_name
      @args = args
    end
    def to_proc
      ::Proc.new {|*outer_args|
        @receiver.to_proc[*outer_args].__send__(@method_name, *@args.map {|a| case a when Base then a.to_proc[*outer_args] else a end })
      }
    end
    def inspect
      "(#{@receiver.inspect}).#{@method_name}(#{@args.map(&:inspect)*', '})"
    end
  end
end

module Kernel
  (1..9).each do |n|
    define_method :"_#{n}" do
      BoostStyleLambda::Argument.new(n)
    end
  end
end
