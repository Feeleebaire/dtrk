class Forest::MediaPublisher
  include ForestLiana::Collection

  collection :MediaPublisher

  action 'Marko', type: 'global',
  fields: [{
    field: 'bulk_importo', type: 'File', isRequired: true, description: "Personal description",
  }]

end
