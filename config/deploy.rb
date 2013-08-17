require 'capistrano/ext/multistage'

set :application, "LinguaMundi"
set :scm, :git
set :repository, "git@github.com:emilevictor/LinguaMundi-rb.git"
set :scm_passphrase, ""

set :user, "emile"
set :stages, ["staging", "production"]
set :default_stage, "staging"

#Bundler.
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))

# Load RVM's capistrano plugin.    
require "rvm/capistrano"

set :rvm_ruby_string, '1.9.2'
set :rvm_type, :user  # Don't use system-wide RVM

ssh_options[:forward_agent] = true
ssh_options[:keys] = [File.join(ENV["HOME"], ".ssh", "id_rsa")]

#default_run_options[:pty] = true  # Must be set for the password prompt
                                  # from git to work