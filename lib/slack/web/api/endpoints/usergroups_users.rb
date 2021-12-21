# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module UsergroupsUsers
          #
          # List all users in a User Group
          #
          # @option options [string] :usergroup
          #   The encoded ID of the User Group to update.
          # @option options [boolean] :include_disabled
          #   Allow results that involve disabled User Groups.
          # @option options [string] :team_id
          #   encoded team id where the user group exists, required if org token is used.
          # @see https://api.slack.com/methods/usergroups.users.list
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/usergroups.users/usergroups.users.list.json
          def usergroups_users_list(options = {})
            throw ArgumentError.new('Required arguments :usergroup missing') if options[:usergroup].nil?
            post('usergroups.users.list', options)
          end

          #
          # Update the list of users for a User Group
          #
          # @option options [string] :usergroup
          #   The encoded ID of the User Group to update.
          # @option options [array] :users
          #   A comma separated string of encoded user IDs that represent the entire list of users for the User Group.
          # @option options [boolean] :include_count
          #   Include the number of users in the User Group.
          # @option options [string] :team_id
          #   encoded team id where the user group exists, required if org token is used.
          # @see https://api.slack.com/methods/usergroups.users.update
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/usergroups.users/usergroups.users.update.json
          def usergroups_users_update(options = {})
            throw ArgumentError.new('Required arguments :usergroup missing') if options[:usergroup].nil?
            throw ArgumentError.new('Required arguments :users missing') if options[:users].nil?
            post('usergroups.users.update', options)
          end
        end
      end
    end
  end
end
