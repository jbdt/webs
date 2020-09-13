module UsersHelper
  def pretty_role(role)
    case role
    when 'admin'
      '<div class="mb-2 mr-2 badge badge-primary">Administrador</div>'.html_safe
    when 'integrator'
      '<div class="mb-2 mr-2 badge badge-success">Integrador</div>'.html_safe
    when 'client'
      '<div class="mb-2 mr-2 badge badge-alternate">Cliente</div>'.html_safe
    end
  end

  def pretty_phone(phone)
    "<a href=\"tel:#{phone}\">#{phone}</a>".html_safe
  end

  def pretty_ip(ip)
    ip || 'Desconocida'
  end

  def pretty_boolean_state(boolean)
    if boolean
      '<div class="mb-2 mr-2 badge badge-pill badge-success">Activado</div>'.html_safe
    else
      '<div class="mb-2 mr-2 badge badge-pill badge-danger">Desactivado</div>'.html_safe
    end
  end

  def pretty_boolean_tabs(boolean)
    if boolean
      'En línea'
    else
      'Sombreado'
    end
  end

  def format_time(time)
    time.try(:strftime, '%Y/%m/%d %R') || 'Nunca'
  end
end
