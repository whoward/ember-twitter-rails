ActiveModelSerializers.config.tap do |config|
  config.adapter = :json_api
  config.jsonapi_include_toplevel_object = true
end