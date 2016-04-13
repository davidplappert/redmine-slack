require 'redmine'

require_dependency 'redmine_slack/listener'

Redmine::Plugin.register :redmine_slack do
	name 'Redmine Slack'
	author 'Samuel Cormier-Iijima'
	url 'https://github.com/davidplappert/redmine-slack'
	author_url 'http://davidplappert.com'
	description 'Slack chat integration on certian issue status updates.'
	version '0.1'

	requires_redmine :version_or_higher => '3'

	settings \
		:default => {
			'slack_url' => nil,
			'channel' => nil,
			'icon' => ':smile:',
			'username' => 'Redmine',
			'issue_status_to_alert' => nil,
		},
		:partial => 'settings/slack_settings'
end
