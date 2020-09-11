class StylesController < ApplicationController
  def edit
  end

  def update
    current_user.update(style_params)
  end

  private
  def style_params
    style_params = params.fetch(:style, {}).permit(:fixed_header, :fixed_sidebar, :header_color, :sidebar_color, :tab_line)
    if style_params.permitted? and params[:include_design].present?
      style_params['fixed_header'] = false if style_params['fixed_header'].nil?
      style_params['fixed_sidebar'] = false if style_params['fixed_sidebar'].nil?
    end
    style_params
  end
end
