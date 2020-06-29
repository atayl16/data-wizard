require 'rake'
require 'rake/task'
Rails.application.load_tasks

class SeedsController < ApplicationController
   def run
     redirect_to clients_url
     Rake::Task["reseed:truncate"].invoke
     Rails.application.load_seed
     end
   end
