class StaticController < ApplicationController
  require 'zip'

  def index
  end

  def export
    file_stream = Zip::OutputStream.write_buffer do |zip|
      zip.put_next_entry "clients.csv"; zip << File.binread("app/assets/csvs/clients.csv")
      zip.put_next_entry "pets.csv"; zip << File.binread("app/assets/csvs/pets.csv")
    end
    file_stream.rewind
    respond_to do |format|
      format.zip do
        send_data file_stream.read, filename: "ingest_wizard.zip"
      end
    end
  end
end
