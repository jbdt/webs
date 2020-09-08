module ApplicationHelper
  def allow_role(roles)
    redirect_to root_path unless authorized_role(roles)
  end

  def authorized_role(roles)
    roles.index(current_user.try(:role)).present?
  end

  def menu_active(controller)
    if params[:controller] == controller
      "class=\"mm-active\"".html_safe
    end
  end
end
