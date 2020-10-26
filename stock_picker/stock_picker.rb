def stock_picker(days_array)

  combined_days = days_array.combination(2).to_a
  days_result = []

  while combined_days.length > 1
    if ((combined_days[0][1]-combined_days[0][0]) > (combined_days[1][1] - combined_days[1][0]))
      combined_days.delete_at(1)
    else
      combined_days.delete_at(0)
    end

  end

  days_array.each_with_index do |days, index|
    combined_days[0].each do |result|
      if result == days
        days_result.push(index)
      end
    end
  end

  p days_result

end

days_array = [17,3,6,9,15,8,6,1,10]

stock_picker(days_array)
