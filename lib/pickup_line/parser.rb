require 'date'

module PickupLine
  class Parser

    def initialize(date)
      @date = date
    end

    def locate(str)
      str = str.downcase
      words = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine', 'ten']
      # Full month names
      if str =~ /(#{Date::MONTHNAMES.compact.map(&:downcase).join('|')})(\s+\d+)?/
        month_num = Date::MONTHNAMES.compact.map(&:downcase).index($1) + 1
        day = $2 ? $2.to_i : -1
        future_date day, month_num, @date.year
      # Abbreviated month names
      elsif str =~ /(#{Date::ABBR_MONTHNAMES.compact.map(&:downcase).join('|')})\.?(\s+\d+)?/
        month_num = Date::ABBR_MONTHNAMES.compact.map(&:downcase).index($1) + 1
        day = $2 ? $2.to_i : -1
        future_date day, month_num, @date.year
      # Day names
      elsif str =~ /(#{Date::DAYNAMES.map(&:downcase).join('|')})/
        dindex = Date::DAYNAMES.map(&:downcase).index $1
        d = @date
        d += 1 until d.wday == dindex
        d
      # In N days
      elsif str =~ /in\s+(\d+)\s+days?/
        @date + $1.to_i
      # In N days (with words)
      elsif str =~ /in\s+(#{words.join('|')})\s+days?/
        days = words.index($1) + 1
        @date + days
      # Today
      elsif str.include?('today')
        @date
      # Tomorrow
      elsif str.include?('tomorrow')
        @date + 1
      end
    end

    private

    def future_date(day, month, year = nil)
      d = Date.new year, month, day
      d < @date ? Date.new(year + 1, month, day) : d
    end

  end
end
