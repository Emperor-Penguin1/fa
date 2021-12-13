------------------------------------------------------------
--
--  File     :  /data/projectiles/SIFThunthoArtilleryShell01/SIFThunthoArtilleryShell01_script.lua
--  Author(s):  Gordon Duclos, Aaron Lundquist
--
--  Summary  :  Thuntho Artillery Shell Projectile script
--              Seraphim T1 Artillery : XSL0103
--
--  Copyright � 2007 Gas Powered Games, Inc.  All rights reserved.
------------------------------------------------------------

SIFThunthoArtilleryShell02 = Class(import('/lua/sim/projectile.lua').Projectile) {

    -- SThunthoArtilleryShell
    FxImpactTrajectoryAligned = false,
    FxImpactLand = import('/lua/EffectTemplates.lua').SThunderStormCannonLandHit,
    FxImpactWater= import('/lua/EffectTemplates.lua').SThunderStormCannonLandHit,
    FxImpactNone = import('/lua/EffectTemplates.lua').SThunderStormCannonHit,
    FxImpactProjectile = {},
    FxImpactProp = import('/lua/EffectTemplates.lua').SThunderStormCannonHit,
    FxImpactUnderWater = {},
    FxImpactUnit = import('/lua/EffectTemplates.lua').SThunderStormCannonUnitHit,
    FxTrails = {},
    PolyTrails = import('/lua/EffectTemplates.lua').SThunderStormCannonProjectilePolyTrails,
    PolyTrailOffset = {0,0},

}
TypeClass = SIFThunthoArtilleryShell02