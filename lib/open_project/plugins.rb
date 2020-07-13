#-- copyright
# OpenProject is an open source project management software.
# Copyright (C) 2012-2021 the OpenProject GmbH
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License version 3.
#
# OpenProject is a fork of ChiliProject, which is a fork of Redmine. The copyright follows:
# Copyright (C) 2006-2013 Jean-Philippe Lang
# Copyright (C) 2010-2013 the ChiliProject Team
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
# See docs/COPYRIGHT.rdoc for more details.
#++

module OpenProject
  module Plugins
    # Find plugins without using bundler
    def self.find_plugins
      # This avoids using bundler to load plugins. "Modules" are bundled plugins, "plugins" plugins are non-bundled (confusing!)
      plugins_hashtable = Hash.new()
      
      [ 'modules', 'plugins' ].each do |plugin_type|
        directory = File.expand_path("../../../#{plugin_type}", __FILE__)
        if Dir.exist?(directory)
          Dir.each_child(directory) do |plugin_name|
            plugin_dir = "#{directory}/#{plugin_name}"
            $LOAD_PATH.unshift "#{plugin_dir}/lib"
            plugin_spec_file = Dir.glob("#{plugin_dir}/*.gemspec").at(0)
            
            plugin_spec = Gem::Specification::load(plugin_spec_file)
            plugin_spec.full_gem_path = plugin_dir # RubyGems expects a gem/gem-name-version directory structure that we don't have
            #plugin_spec.spec_dir = plugin_dir        # No setter for this
            #plugin_spec.spec_file = plugin_spec_file # No setter for this
            
            plugins_hashtable[plugin_spec.name] = plugin_spec
          end
        end
      end
      plugins_hashtable
    end
    
    ALL_PLUGINS = find_plugins
    
    require 'open_project/plugins/patch_registry'
    require 'open_project/plugins/load_dependency'
    require 'open_project/plugins/acts_as_op_engine'
  end
end
