module ApplicationHelper
  def is_current_controller?(controller_name)
    controller.controller_name == controller_name
  end
end
