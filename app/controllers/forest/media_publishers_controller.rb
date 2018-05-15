# /controllers/forest/companies_controller.rb
require 'data_uri'
require 'csv'
class Forest::MediaPublishersController < ForestLiana::ApplicationController
  def marko
    uri = URI::Data.new(params.dig('data', 'attributes', 'values', 'bulk_importo'))
    uri.data.force_encoding('utf-8')
    CSV.parse(uri.data, :quote_char => "|").each do |row|
      MediaPublisher.create!({
        :publisher_id => (Publisher.find_by name: row[1]).id,
        :tarif => row[21],
        :offre => row [5],
        :type_pub => row [11],
        :format => row [14],
        :emplacement => row [],
        :rubrique => row [],
        :categorie => row [],
        :target_id => 1
     })
    end
    render json: { success: 'Data successfuly imported!' }

  end
end
