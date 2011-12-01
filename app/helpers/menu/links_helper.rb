module Menu::LinksHelper
	def module_context_for_select
		@modulecontexts = ModuleContext.all
		@mod_select=@modulecontexts.map { |mc| [mc.name,mc.id] }
	return @mod_select
	end
end
