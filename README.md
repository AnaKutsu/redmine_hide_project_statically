# Redmine plugin: Force hide projects statically

Hide redmine projects from non-defined users (even if user has admin permission).


Installation
------------

Clone this repository to Redmine plugins directory

    cd /path/to/redmine/plugins
    git clone https://github.com/AnaKutsu/redmine_hide_project_statically.git

Redmine's restart may be needed after installations.


Setup
------------

* Check project IDs (number) you want to hide.
* Check user IDs who will be able to view the hidden project.
* Open plugins/redmine_hide_project_statically/lib/redmine_hide_project_statically/patch.rb with your editor.
* Replace the PROJECT_IDS and USER_IDS constants with IDs which you checked above.


Supported versions
------------------

* Developed on Redmine 4.2
* May be able to run with older versions


License
-------

The plugin is available under the terms of the [GNU General Public License](http://www.gnu.org/licenses/gpl-2.0.html), version 2 or later.
