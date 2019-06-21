Time::DATE_FORMATS[:humanized_ago]  = ->(time) do
  st = Time.now.beginning_of_day
  nd = Time.now.end_of_day

  case
  when time.between?(st + 1.day, nd + 1.day)
    "Завтра в #{time.strftime('%H:%M')}"
  when time.between?(st, nd)
    "Сегодня в #{time.strftime('%H:%M')}"
  when time.between?(st - 1.day, nd - 1.day)
    "Вчера в #{time.strftime('%H:%M')}"
  else
    time.strftime('%d %B %Y' ' в ' '%H:%M')
  end
end
