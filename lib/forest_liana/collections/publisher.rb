class Forest::Publisher
  include ForestLiana::Collection

  collection :Publisher

  action 'Mark', type: 'global',
  fields: [{
    field: 'bulk_import', type: 'File', isRequired: true, description: "Personal description",
  }]

end
