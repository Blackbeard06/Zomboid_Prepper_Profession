require("MainCreationMethods");

BaseGameCharacterDetails.DoProfessions = function()

	local prepper = ProfessionFactory.addProfession("prepper", "Prepper", "profession_policeofficer2", 0);

	

	prepper:addXPBoost(Perks.PlantScavenging, 1)
	prepper:addXPBoost(Perks.Doctor, 1)
	prepper:addXPBoost(Perks.Aiming, 1)
	prepper:addXPBoost(Perks.Reloading, 1)
    prepper:addXPBoost(Perks.Farming, 1)
	prepper:addXPBoost(Perks.Trapping, 1)
	prepper:addXPBoost(Perks.Fishing, 1)

    prepper:getFreeRecipes():add("Make Timer");
    prepper:getFreeRecipes():add("Make Pipe bomb");
    prepper:getFreeRecipes():add("Make Smoke Bomb");



	local profList = ProfessionFactory.getProfessions()
	for i=1,profList:size() do
		local prof = profList:get(i-1)
		BaseGameCharacterDetails.SetProfessionDescription(prof)
	end
end

Events.OnGameBoot.Add(BaseGameCharacterDetails.DoProfessions);