module GuardsHelper
  def day(guard)
    require 'date'
    if(guard.guard_date > Date.today)
      return 'bg-red-600'
    else
      return 'bg-green-500'
    end
  end
end
