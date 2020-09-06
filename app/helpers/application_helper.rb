module ApplicationHelper
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

  def show_role(roles)
    roles.index(current_user.role).present?
  end
end
