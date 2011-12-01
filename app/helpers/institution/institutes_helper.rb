module Institution::InstitutesHelper

	def institution_group_for_selection
    institutiongroups=EducationInstitutionGroup.all.map{|ig| [ig.name,ig.id]}
		return institutiongroups
  end

end
