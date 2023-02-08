module FlashRailsMessages
  class Base
    # BOOTSTRAP FRAMEWORK
    # =========================================

    def alert_element(type, message)
      content_tag :div, alert_options(type) do
        content = ActiveSupport::SafeBuffer.new
        content += message.html_safe
        content += close_element if options.fetch(:dismissible, false)
        content
      end
    end

    def close_element
      content_tag :button, type: 'button', class: 'btn-close', 'data-bs-dismiss': 'alert', 'aria-label': 'Close' 
    end

    # def default_alert_classes
      # 'alert'
    # end

    def alert_type_classes
      {
        success: 'alert-success',
        notice: 'alert-success',
        alert: 'alert-danger',
        error: 'alert-danger',
      }
    end

    def custom_alert_classes
      if options.fetch(:dismissible, false)
        'alert-dismissible'
      end
    end
  end
end
