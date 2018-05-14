# /controllers/forest/companies_controller.rb
require 'data_uri'
require 'csv'
class Forest::MediaPublishersController < ForestLiana::ApplicationController
  def marko
    uri = URI::Data.new(params.dig('data', 'attributes', 'values', 'bulk_importo'))
    uri.data.force_encoding('utf-8')
    CSV.parse(uri.data, :quote_char => "|").each do |row|
      publisher = Publisher.find_by_name(row[1])
      MediaPublisher.create!({
        :publisher_id => publisher.id,
        :tarif => row[33],
        :target_id => 1
     })
    end
    render json: { success: 'Data successfuly imported!' }

  end
end
