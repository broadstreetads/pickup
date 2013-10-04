require_relative '../lib/pickup_line'

def thoughts(today, &block)
  describe "on #{today}" do
    block.call(Proc.new { |question, reference|
      it "should see '#{question}' as #{reference}" do
        d = PickupLine::Parser.new(today)
        ref = d.locate question
        ref.should == reference
      end
    })
  end
end
