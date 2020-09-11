class StylesController < ApplicationController
  def edit
  end

  def update
    current_user.update(style_params)
    # respond_to do |format|
    #   if @user.update(user_params)
    #     format.html { redirect_to @user, notice: 'User was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @user }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  private
  def style_params
    style_params = params.fetch(:style, {}).permit(:fixed_header, :fixed_sidebar, :header_color, :sidebar_color, :tab_line)
    if style_params.permitted?
      style_params['fixed_header'] = style_params['fixed_header'] == 'on'
      style_params['fixed_sidebar'] = style_params['fixed_sidebar'] == 'on'
    end
    style_params
  end
end
