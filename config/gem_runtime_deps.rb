# Ripped out of the Gemfile, with versioning relaxed somewhat where necessary

gem 'actionpack-xml_parser', '~> 2.0'
gem 'activemodel-serializers-xml', '~> 1.0'
gem 'activerecord-import', '~> 1.0'
gem 'activerecord-session_store', '~> 2.0'
gem 'rails', '~> 6.0'
gem 'responders', '~> 3.0'

gem 'rdoc', '>= 2.4'

gem 'omniauth', '~> 2.0'
gem 'doorkeeper', '~> 5.5'
gem 'request_store', '~> 1.5'

gem 'warden', '~> 1.2'
gem 'warden-basic_auth', '~> 0.2'

gem 'will_paginate', '~> 3.3'

gem 'friendly_id', '~> 5.4'

gem 'acts_as_list', '~> 1.0'
gem 'acts_as_tree', '~> 2.9'
gem 'awesome_nested_set', '~> 3.4'
gem 'rubytree', '~> 1.0'
gem 'typed_dag', '~> 2.0.2'

gem 'addressable', '~> 2.7'

# Remove whitespace from model input
gem 'auto_strip_attributes', '~> 2.5'

# Provide timezone info for TZInfo used by AR
gem 'tzinfo-data', '~> 1.2020'

# to generate html-diffs (e.g. for wiki comparison)
gem 'htmldiff'

# Generate url slugs with #to_url and other string niceties
gem 'stringex', '~> 2.8.5'

# CommonMark markdown parser with GFM extension
gem 'commonmarker', '~> 0.21'

# HTML pipeline for transformations on text formatter output
# such as sanitization or additional features
gem 'html-pipeline', '~> 2.14'
# Tasklist parsing and renderer
gem 'deckar01-task_list', '~> 2.3'
# Requires escape-utils for faster escaping
gem 'escape_utils', '~> 1.0'
# Syntax highlighting used in html-pipeline with rouge
gem 'rouge', '~> 3.22'
# HTML sanitization used for html-pipeline
gem 'sanitize', '~> 5.2', '>= 5.2.1'
# HTML autolinking for mails and urls (replaces autolink)
gem 'rinku', '~> 2.0'
# Version parsing with semver
gem 'semantic', '~> 1.6'

# generates SVG Graphs
# used for statistics on svn repositories
gem 'svg-graph', '~> 2.2'

gem 'date_validator', '~> 0.11'
gem 'ruby-duration', '~> 3.2'

# provide compatible filesystem information for available storage
gem 'sys-filesystem', '~> 1.3'

# Faster posix-compliant spawns for 8.0. conversions with pandoc
gem 'posix-spawn', '~> 0.3.13'

gem 'bcrypt', '~> 3.1.6'

gem 'multi_json', '~> 1.15'
gem 'oj', '~> 3.10'

gem 'daemons'
gem 'delayed_job_active_record', '~> 4.1'
gem 'delayed_cron_job', '~> 0.7'

gem 'rack-protection', '~> 2.0'

# Rack::Attack is a rack middleware to protect your web app from bad clients.
# It allows whitelisting, blacklisting, throttling, and tracking based
# on arbitrary properties of the request.
# https://github.com/kickstarter/rack-attack
gem 'rack-attack', '~> 6.5'

# CSP headers
gem 'secure_headers', '~> 6.3'

# Browser detection for incompatibility checks
gem 'browser', '~> 5.0'

# Providing health checks
gem 'okcomputer', '~> 1.18'

gem 'gon', '~> 6.4'

# Lograge to provide sane and non-verbose logging
gem 'lograge', '~> 0.11'

# Structured warnings to selectively disable them in production
gem 'structured_warnings', '~> 0.4.0'

# catch exceptions and send them to any airbrake compatible backend
# don't require by default, instead load on-demand when actually configured
#gem 'airbrake', '~> 9.4.3', require: false

gem 'prawn', '~> 2.2'
gem 'prawn-markup', '~> 0.3'

gem 'cells-erb', '~> 0.1'
gem 'cells-rails', '~> 0.1'

gem 'meta-tags', '~> 2.13'

# we use dalli as standard memcache client
# requires memcached 1.4+
gem 'dalli', '~> 2.7.10'

gem 'i18n-js', '~> 3.7'
gem 'rails-i18n', '~> 6.0'
gem 'sprockets', '~> 3.7'

gem 'puma', '~> 5' # used for development and optionally for production

gem 'nokogiri', '~> 1.10'

gem 'carrierwave', '~> 1.3'
gem 'carrierwave_direct', '~> 2.1'
gem 'fog-aws'

gem 'aws-sdk-core', '~> 3.107'
# File upload via fog + screenshots on travis
gem 'aws-sdk-s3', '~> 1.91'

gem 'openproject-token', '~> 2.1'

gem 'plaintext', '~> 0.3'

gem 'rest-client', '~> 2.0'

gem 'ruby-progressbar', '~> 1.10'

gem 'mini_magick', '~> 4.11'

#gem 'bootsnap', '~> 1.4.5', require: false

# API gems
gem 'grape', '~> 1.3'
gem 'roar', '~> 1.1'

# CORS for API
gem 'rack-cors', '~> 1.1'

# Required for contracts
gem 'disposable', '~> 0.4'

gem 'pg', '~> 1.2'

# Support application loading when no database exists yet.
gem 'activerecord-nulldb-adapter', '~> 0.4'

# Have application level locks on the database to have a mutex shared between workers/hosts.
# We e.g. emply this to safeguard the creation of journals.
gem 'with_advisory_lock', '~> 4.6'




# NOTE: From Gemfile.modules:
#gem 'omniauth-openid_connect-providers'
#gem 'omniauth_openid_connect'
