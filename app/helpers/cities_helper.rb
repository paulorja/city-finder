module CitiesHelper
  def states_options
    options = options_from_collection_for_select(State.all, 'id', 'name')
    "<option>Todos os Estados</option>#{options}".html_safe
  end
end
