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

  def authorized_role(roles)
    roles.index(current_user.role).present?
  end

  def menu_active(controller)
    if params[:controller] == controller
      "class=\"mm-active\"".html_safe
    end
  end
end
