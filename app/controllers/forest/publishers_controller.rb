# /controllers/forest/companies_controller.rb
require 'data_uri'
require 'csv'
class Forest::PublishersController < ForestLiana::ApplicationController
  def mark
    uri = URI::Data.new(params.dig('data', 'attributes', 'values', 'bulk_import'))
    uri.data.force_encoding('utf-8')
    CSV.parse(uri.data, :quote_char => "|").each do |row|
      Publisher.create!({
        :name => row[0],
        :type_id => 2
     })
    end
    render json: { success: 'Data successfuly imported!' }

  end
end
