class Periodical < TulCdm::Models::Base

  has_metadata "descMetadata", type: PeriodicalMetadata
  has_metadata "notationsMetadata", :type => TulCdm::Datastreams::NotationsDatastream
  has_metadata "digitalMetadata", :type => TulCdm::Datastreams::DigitalDatastream
  has_metadata "creationMetadata", :type => TulCdm::Datastreams::CreationDatastream

  has_attributes :title,:format,:type, :publisher,:digital_collection,:digital_publisher,
      :digital_specifications,:contact,:repository,:repository_collection, :language,
      :identifier, datastream: :objectMetadata, multiple: true

  has_attributes :item_url, :oclc_number, :date_created, :date_modified, :contentdm_number,
   :contentdm_file_name, :downloadable, :contentdm_file_path, :contentdm_collection_id, datastream: 'contentdmMetadata', multiple: false

  has_attributes :issue_title, :ocr_note, datastream: 'descMetadata', multiple: true

  has_attributes :notes, :personal_names, datastream: 'notationsMetadata', multiple: true

  has_attributes :file_name, :document_content, datastream: 'digitalMetadata', multiple: true

  has_attributes :created, :creator, datastream: 'creationMetadata', multiple: true

end
