module ApplicationHelper
    def login_helper
       #  if current_user.is_a?(User) #OpenStruct Method
       if current_user.is_a?(GuestUser)
            (link_to "login", new_user_session_path, method: :get  ) +
            "<br />".html_safe +
            (link_to "register", new_user_registration_path, method: :get)  
            else 
            link_to "logout", destroy_user_session_path, method: :delete  
         end
    end

    def source_helper
      if session[:source]
        greeting = "Thanks for visiting me from  #{session[:source]}"
        content_tag(:p, greeting, class: "source-greeting")
      end
    end

    def copyright 
       msg = "My Company"
      @copyright = "&copy; #{Time.now.year} | <b>#{msg}".html_safe
    end


    
end
