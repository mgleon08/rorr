$LOAD_PATH << File.dirname(__FILE__)

require 'optparse'
require 'colorize'
require 'readline'
require 'fileutils'
require 'erb'
require 'rspec'
require 'spec_helper'

require "rorr/version"

require "rorr/base"
require "rorr/ui"
require "rorr/init"
require "rorr/main"
require "rorr/score"
require "rorr/config"
require "rorr/dont_ask_me"
require "rorr/return_value"
require "rorr/test_pass"
