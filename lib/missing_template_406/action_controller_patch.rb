module MissingTemplate406
  module ActionControllerPatch
    def self.included(base)
      base.class_eval do
        rescue_from ActionView::MissingTemplate do
          raise unless Rails.env.production?
          render nothing: true, status: :not_acceptable
        end
      end
    end
  end
end
