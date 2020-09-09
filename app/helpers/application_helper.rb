module ApplicationHelper
  def allow_role(roles)
    redirect_to root_path unless authorized_role(roles)
  end

  def authorized_role(roles)
    roles.index(current_user.try(:role)).present?
  end

  def is_here?(controller, action=nil)
    action ||= params[:action]
    params[:controller] == controller and params[:action] == action
  end

  def menu_active(controller, action=nil)
    " class=\"mm-active\"".html_safe if is_here?(controller, action)
  end
end
