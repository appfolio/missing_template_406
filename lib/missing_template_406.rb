require 'action_controller'
require 'missing_template_406/action_controller_patch'

module MissingTemplate406
  ActionController::Base.send(:include, ActionControllerPatch)
end
