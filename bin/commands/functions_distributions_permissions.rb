# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Cli
    class App
      desc 'FunctionsDistributionsPermissions methods.'
      command 'functions_distributions_permissions' do |g|
        g.desc 'Grant users access to a custom slack function if its permission_type is set to named_entities'
        g.long_desc %( Grant users access to a custom slack function if its permission_type is set to named_entities )
        g.command 'add' do |c|
          c.flag 'function_app_id', desc: 'The encoded ID of the app.'
          c.flag 'function_callback_id', desc: "The callback ID defined in the function's definition file."
          c.flag 'function_id', desc: 'The encoded ID of the function.'
          c.flag 'user_ids', desc: 'List of encoded user IDs.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.functions_distributions_permissions_add(options))
          end
        end

        g.desc 'List the access type of a custom slack function and include the users with access if its permission_type is set to named_entities'
        g.long_desc %( List the access type of a custom slack function and include the users with access if its permission_type is set to named_entities )
        g.command 'list' do |c|
          c.flag 'function_app_id', desc: 'The encoded ID of the app.'
          c.flag 'function_callback_id', desc: "The callback ID defined in the function's definition file."
          c.flag 'function_id', desc: 'The encoded ID of the function.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.functions_distributions_permissions_list(options))
          end
        end

        g.desc 'Revoke user access to a custom slack function if permission_type set to named_entities'
        g.long_desc %( Revoke user access to a custom slack function if permission_type set to named_entities )
        g.command 'remove' do |c|
          c.flag 'function_app_id', desc: 'The encoded ID of the app.'
          c.flag 'function_callback_id', desc: "The callback ID defined in the function's definition file."
          c.flag 'function_id', desc: 'The encoded ID of the function.'
          c.flag 'user_ids', desc: 'List of encoded user IDs.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.functions_distributions_permissions_remove(options))
          end
        end

        g.desc 'Set the access type of a custom slack function and define the users to be granted access if permission_type is set to named_entities'
        g.long_desc %( Set the access type of a custom slack function and define the users to be granted access if permission_type is set to named_entities )
        g.command 'set' do |c|
          c.flag 'permission_type', desc: 'The type of permission that defines how the function can be distributed.'
          c.flag 'function_app_id', desc: 'The encoded ID of the app.'
          c.flag 'function_callback_id', desc: "The callback ID defined in the function's definition file."
          c.flag 'function_id', desc: 'The encoded ID of the function.'
          c.flag 'user_ids', desc: 'List of encoded user IDs.'
          c.action do |_global_options, options, _args|
            puts JSON.dump(@client.functions_distributions_permissions_set(options))
          end
        end
      end
    end
  end
end
