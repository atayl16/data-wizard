class BatchmanifestsController < ApplicationController
  def index
    @batchmanifests = Batchmanifest.all
  end
end
