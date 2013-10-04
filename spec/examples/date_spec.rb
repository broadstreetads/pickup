require 'spec_helper'

# On a saturday in September
thoughts Date.new(2013, 9, 28) do |think|

  # Full date
  think['Happens on October 21st', Date.new(2013, 10, 21)]
  think['Coming up on January 12th - tasty food!', Date.new(2014, 1, 12)]
  think['On September 10th - tasty food!', Date.new(2014, 9, 10)]
  think['On September 30th - tasty food!', Date.new(2013, 9, 30)]
  think['April 15 is the best day', Date.new(2014, 4, 15)]
  think['november 12th is the day', Date.new(2013, 11, 12)]
  think['November is a month I like', Date.new(2013, 11, -1)]

  # Abbreviated Dates (with and without punctuation)
  think['Christmas is Dec 25th', Date.new(2013, 12, 25)]
  think['Our favorite Nov. 13th is this year', Date.new(2013, 11, 13)]

  # Full day name
  think['Meat night is Friday night', Date.new(2013, 10, 4)]
  think['I love beer on Thursday', Date.new(2013, 10, 3)]
  think['This is wednesday night', Date.new(2013, 10, 2)]

  # Today
  think['Today is my favorite date', Date.new(2013, 9, 28)]
  think['what are you doing today?', Date.new(2013, 9, 28)]

  # Tomorrow
  think['Tomorrow is a good day for fun', Date.new(2013, 9, 29)]
  think['no fun tomorrow', Date.new(2013, 9, 29)]

  # In x days
  think['i will do it in 2 days', Date.new(2013, 9, 30)]
  think['i will do it in 1 day from now', Date.new(2013, 9, 29)]
  think['i will do it in one day', Date.new(2013, 9, 29)]
  think['i will do it in two days', Date.new(2013, 9, 30)]

  # Things that should not parse
  think['this has no information', nil]

end
