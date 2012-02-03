module Menu::LinksHelper
	def module_context_for_select
		@modulecontexts = ModuleContext.all
		@mod_select=@modulecontexts.map { |mc| [mc.name,mc.id] }
	return @mod_select
	end

	def menu_container_for_select
    @menu_link_for_select=MenuLink.all
    @menu_link_select = @menu_link_for_select.map { |mg| [mg.name,mg.id] }
    return @menu_link_select
  end
end
