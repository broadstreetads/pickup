require_relative '../lib/pickup_line'

# The methods available in the think context
module ThoughtMethods
  attr_accessor :pickup_parser
  def think(question, reference)
    parser = pickup_parser
    it "should see '#{question}' as #{reference}" do
      parser.locate(question).should == reference
    end
  end
end

# A context method
def thoughts_on(today, &block)
  example_class = describe "on #{today}"
  example_class.extend ThoughtMethods
  example_class.pickup_parser = PickupLine::Parser.new(today)
  example_class.class_eval(&block)
end
