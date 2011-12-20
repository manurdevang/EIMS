class Menu::MappingsController < ApplicationController
  def menu_group_menu_containers
    @menu_groups= MenuGroup.all
    puts "******************************************menu groups"
    puts @menu_groups.inspect
  end
  
  def menu_container_menu_groups
    @menu_containers=MenuContainer.all
    puts "******************************************containers"
    puts @menu_containers.inspect
  end
end
