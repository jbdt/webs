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

  def pretty_time_hhmm(time)
    time.try(:strftime, '%Y/%m/%d %R') || 'Nunca'
  end

  def pretty_time_hhmmss(time)
    time.try(:strftime, '%Y/%m/%d %H:%M:%S') || 'Nunca'
  end

  def pretty_ip(ip)
    if ip == '::1'
      'Local'
    else
      ip
    end
  end

  def pretty_ip_show(ip)
    if ip
      "<a href=\"javascript:void(0);\" class=\"mb-2 mr-2 badge badge-alternate\" data-toggle=\"modal\" data-target=\"#ip-logs-modal\">#{pretty_ip(ip)}</a>".html_safe
    else
      'Desconocida'
    end
  end

  def pretty_ip_location(ip)
    if ip == '::1'
      'Local'
    else
      "<a href=\"https://whatismyipaddress.com/ip/#{ip_log.ip}\"></a>".html_safe
    end
  end

end
