class Batchmanifest < ApplicationRecord
  def self.to_csv
    attributes = %w{filename filetype}

    CSV.generate(headers: true) do |csv|
      # csv << attributes

      all.each do |batchmanifest|
        csv << attributes.map{ |attr| batchmanifest.send(attr) }
      end
    end
  end
end
