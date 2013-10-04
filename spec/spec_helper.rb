require_relative '../lib/pickup'

def thoughts(today, &block)
  describe "on #{today}" do
    block.call(Proc.new { |question, reference|
      it "should see '#{question}' as #{reference}" do
        d = Pickup::Parser.new(today)
        ref = d.locate question
        ref.should == reference
      end
    })
  end
end
