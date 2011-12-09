module Menu::GroupsHelper
  def menu_group_for_select
    @menu_group_for_select=MenuGroup.all
    @menu_group_select=@menu_group_for_select.map { |mg| [mg.name,mg.id] }
    return @menu_group_select
  end
end
