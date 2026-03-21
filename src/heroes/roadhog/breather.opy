#!mainFile "../../main.opy"


rule "[roadhog/breather.opy]: Adjust Breather efficiency":
    @Event eachPlayer
    @Hero roadhog
    @Condition eventPlayer.isUsingAbility2()

    eventPlayer.setHealingDealt(percent(ADJ_ROADHOG_BREATHER_HEAL_MINIMUM/OW2_ROADHOG_BREATHER_HEAL_MINIMUM))
    wait(OW2_ROADHOG_BREATHER_MINIMUM_DURATION)
    eventPlayer.setHealingDealt(percent((ADJ_ROADHOG_BREATHER_HEAL_MAXIMUM-ADJ_ROADHOG_BREATHER_HEAL_MINIMUM)/(OW2_ROADHOG_BREATHER_HEAL_MAXIMUM-OW2_ROADHOG_BREATHER_HEAL_MINIMUM)))
    waitUntil(not eventPlayer.isUsingAbility2(), Math.INFINITY)
    eventPlayer.setHealingDealt(100)
