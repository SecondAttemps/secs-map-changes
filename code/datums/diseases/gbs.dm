<<<<<<< HEAD
/datum/disease/gbs
	name = "GBS"
	max_stages = 5
	spread_text = "On contact"
	spread_flags = CONTACT_GENERAL
	cure_text = "Synaptizine & Sulfur"
	cures = list("synaptizine","sulfur")
	cure_chance = 15//higher chance to cure, since two reagents are required
	agent = "Gravitokinetic Bipotential SADS+"
	viable_mobtypes = list(/mob/living/carbon/human)
	disease_flags = CAN_CARRY|CAN_RESIST|CURABLE
	permeability_mod = 1
	severity = BIOHAZARD

/datum/disease/gbs/stage_act()
	..()
	switch(stage)
		if(2)
			if(prob(45))
				affected_mob.adjustToxLoss(5)
				affected_mob.updatehealth()
			if(prob(1))
				affected_mob.emote("sneeze")
		if(3)
			if(prob(5))
				affected_mob.emote("cough")
			else if(prob(5))
				affected_mob.emote("gasp")
			if(prob(10))
				to_chat(affected_mob, "<span class='danger'>You're starting to feel very weak...</span>")
		if(4)
			if(prob(10))
				affected_mob.emote("cough")
			affected_mob.adjustToxLoss(5)
			affected_mob.updatehealth()
		if(5)
			to_chat(affected_mob, "<span class='danger'>Your body feels as if it's trying to rip itself open...</span>")
			if(prob(50))
				affected_mob.gib()
		else
=======
/datum/disease/gbs
	name = "GBS"
	max_stages = 5
	spread_text = "On contact"
	spread_flags = VIRUS_SPREAD_BLOOD | VIRUS_SPREAD_CONTACT_SKIN | VIRUS_SPREAD_CONTACT_FLUIDS
	cure_text = "Synaptizine & Sulfur"
	cures = list("synaptizine","sulfur")
	cure_chance = 15//higher chance to cure, since two reagents are required
	agent = "Gravitokinetic Bipotential SADS+"
	viable_mobtypes = list(/mob/living/carbon/human)
	disease_flags = CAN_CARRY|CAN_RESIST|CURABLE
	permeability_mod = 1
	severity = VIRUS_SEVERITY_BIOHAZARD

/datum/disease/gbs/stage_act()
	..()
	switch(stage)
		if(2)
			if(prob(45))
				affected_mob.adjustToxLoss(5)
				affected_mob.updatehealth()
			if(prob(1))
				affected_mob.emote("sneeze")
		if(3)
			if(prob(5))
				affected_mob.emote("cough")
			else if(prob(5))
				affected_mob.emote("gasp")
			if(prob(10))
				to_chat(affected_mob, "<span class='danger'>You're starting to feel very weak...</span>")
		if(4)
			if(prob(10))
				affected_mob.emote("cough")
			affected_mob.adjustToxLoss(5)
			affected_mob.updatehealth()
		if(5)
			to_chat(affected_mob, "<span class='danger'>Your body feels as if it's trying to rip itself open...</span>")
			if(prob(50))
				affected_mob.gib()
		else
>>>>>>> db0c10e... Refactors virus spreading (#31066)
			return