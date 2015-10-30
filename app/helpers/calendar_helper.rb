module CalendarHelper
  def month_link(month_date)
    link_to(I18n.localize(month_date, :format => "%B"), {:month => month_date.month, :year => month_date.year})
  end
  
  # custom options for this calendar
  def event_calendar_opts(display_format, outbound)
    {
      :year => @year,
      :month => @month,
      :abbrev => nil,
      :event_strips => @event_strips,
      :display_properties => (display_format==4)? 4 : 3,
      :outbound => outbound,
      :month_name_text => I18n.localize(@shown_month, :format => "%B %Y"),
      :previous_month_text => month_link(@shown_month.last_month),
      :next_month_text => next_month_link(@shown_month.next_month)    }
  end

  def event_calendar(display_format, outbound)
    # args is an argument hash containing :event, :day, and :options
    index = 0
    calendar event_calendar_opts(display_format, outbound) do |args|
      html << some_html
      html
    end
  end
end