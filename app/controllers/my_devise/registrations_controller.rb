class MyDevise::RegistrationsController < Devise::RegistrationsController
  protected
        def after_sign_up_path_for(resource)
 

      	blogs_url
      end  
end

