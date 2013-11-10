require_relative '../lib/pickup_line'

# The methods available in the think context
module ThinkMethods
  def think(question, reference)
    it "should see '#{question}' as #{reference}" do
      date = Date.new(2013, 9, 28)
      parser = PickupLine::Parser.new(date)
      parser.locate(question).should == reference
    end
  end
end

# A context method
def thoughts(today, &block)
  example_class = describe "on #{today}"
  example_class.send :extend, ThinkMethods
  example_class.class_eval &block
end
