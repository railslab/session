module ApplicationHelper
  def flash_class(level)
    case level
        when :success,
             :ok     then "alert alert-success"
        when :notice then "alert alert-info"
        when :error  then "alert alert-danger"
        when :alert  then "alert alert-warning"
        
        else "alert alert-#{level}"
    end
  end
end
