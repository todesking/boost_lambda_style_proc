require File.expand_path('../../lib/boost_lambda_style_proc.rb', __FILE__)

describe BoostLambdaStyleProc do
  describe BoostLambdaStyleProc::Argument do
    it 'Kernel#_{n} is shorthand for BoostLambdaStyleProc::Argument.new(n)' do
      _1.should be_a(BoostLambdaStyleProc::Argument)
    end
    it 'can create proc that returns n-th(1 origin) argument' do
      _2.to_proc[1,2,3].should == 2
    end

    it 'can create Expression by call method' do
      (_1 + _2).should be_a(BoostLambdaStyleProc::Expression)
    end
  end

  describe BoostLambdaStyleProc::Expression do
    it 'can create proc' do
      (_1 + _2).to_proc[1, 2].should == 3

      [1, 2, 3].map(&(_1 * 2 + 3)).should == [5, 7, 9]

      [2, 4, 6].should     be_all(&(_1.even?))
      [1, 4, 6].should_not be_all(&(_1.even?))
    end
  end
end
