require 'rake'
require 'rake/task'
Rails.application.load_tasks

class SeedsController < ApplicationController
   def run
     Rake::Task["reseed:truncate"].invoke
     Rails.application.load_seed
     redirect_to clients_url
     end
   end
