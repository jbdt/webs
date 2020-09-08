module UsersHelper
  def pretty_role(role)
    case role
    when 'admin'
      'Administrador'
    when 'integrator'
      'Integrador'
    when 'client'
      'Cliente'
    end
  end

  def format_time(time)
    time.try(:strftime, '%Y/%m/%d %R') || 'Nunca'
  end
end
