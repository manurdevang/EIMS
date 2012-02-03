module Menu::ContainerHelper
  def menu_container_for_select
    @menu_container_for_select=MenuContainer.all
    @menu_container_select = @menu_container_for_select.map { |mg| [mg.name,mg.id] }
    return @menu_container_select
  end
end
