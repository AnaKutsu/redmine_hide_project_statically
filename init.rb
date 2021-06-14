require_dependency 'redmine_hide_project_statically/patch'

Redmine::Plugin.register :redmine_hide_project_statically do
  name 'Force hide projects statically'
  author 'Takashi Ishiakwa'
  description 'Hide redmine projects from non-defined users (even if user has admin permission).'
  version '0.0.1'
  url 'https://github.com/AnaKutsu/redmine_hide_project_statically'
  author_url 'https://www.ana-kutsu.com/'
end
