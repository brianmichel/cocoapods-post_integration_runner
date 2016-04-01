require 'cocoapods'

module Pod
  class Installer
    alias_method :original_perform_post_install_actions, :perform_post_install_actions

    def perform_post_install_actions
      Pod::UI.info('Running patched install! function with post-post install hook')
      original_perform_post_install_actions
      Pod::UI.info('Finished running regular install! function, executing hook')

      puts "Options #{post_runner_install_options}"
    end

    def post_runner_install_options
      Pod::Config.instance.podfile.plugins['cocoapods-post_integration_runner']
    end
  end
end
