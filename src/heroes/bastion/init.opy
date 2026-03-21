#!mainFile "../../main.opy"

#!include "../../heroes/bastion/reconfigure.opy"


def initBastion():
    @Name "[bastion/init.opy]: initBastion()"
    
    setCustomHp(ADJ_BASTION_HEALTH, ADJ_BASTION_ARMOR, 0)
    setUltCost(ADJ_BASTION_ULT_COST)
    
    if not eventPlayer.isDuplicatingAHero():
        removeSelfHealing()

    eventPlayer.startScalingSize(0.96, true)
    startDamageModification(eventPlayer, eventPlayer, percent(0.5))

    eventPlayer.hero_initialized = true