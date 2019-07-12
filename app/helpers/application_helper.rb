module ApplicationHelper
  def flash_message(msg_type)
    return if msg_type.nil?
      %Q(<p class="#{msg_type} error_messages">#{flash[msg_type]}</p>).html_safe
  end
end
