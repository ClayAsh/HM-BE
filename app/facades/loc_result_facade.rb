class LocResultFacade
  def self.create_loc_index_results(location)
    json = LocService.get_location_collection_data(location)
    json[:results].map do |result|
      LocIndexResult.new(result)
    end
  end

  def self.create_single_item_result(location, result_index_id, item_id)
    json = LocService.get_single_location_item_data(location, result_index_id, item_id)
    LocItemResult.new(json)
  end
end
