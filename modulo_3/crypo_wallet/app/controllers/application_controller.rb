class ApplicationController < ActionController::Base
    before_action :set_locale #Execulta o metodo antes de tudo

    def set_locale
        if params[:locale] #Params é os paramentros da URL
            cookies[:locale] = params[:locale]
        end

        if cookies[:locale] 
            if I18n.locale != cookies[:locale]
                I18n.locale = cookies[:locale]
            end
        end
    end
end
