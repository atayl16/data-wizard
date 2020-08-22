require 'rake'
require 'rake/task'
Rails.application.load_tasks
class ApplicationController < ActionController::Base
  def run
    redirect_to :root
    Rake::Task['reseed:truncate'].invoke
    Rails.application.load_seed
    Rake::Task['db:seed:001_batchmanifest'].invoke
    Rake::Task['db:seed:001_locations'].invoke
    Rake::Task['db:seed:002_categories'].invoke
    Rake::Task['db:seed:002_customfields'].invoke
    Rake::Task['db:seed:002_inventory'].invoke
    Rake::Task['db:seed:002_staff'].invoke
    Rake::Task['db:seed:003_services'].invoke
    Rake::Task['db:seed:004_clients'].invoke
    Rake::Task['db:seed:004_memberships'].invoke
    Rake::Task['db:seed:005_pricings'].invoke
    Rake::Task['db:seed:006_appointments'].invoke
    Rake::Task['db:seed:007_bundles'].invoke
  end

  def handle_404
    redirect_to :root
  end
end
