-- Cybran Molecular Cannon

local CMolecularCannonProjectile = import('/lua/cybranprojectiles.lua').CMolecularCannonProjectile
local EffectTemplate = import('/lua/EffectTemplates.lua')
local OverchargeProjectile = import('/lua/sim/DefaultProjectiles.lua').OverchargeProjectile

CDFCannonMolecular01 = Class(CMolecularCannonProjectile, OverchargeProjectile) {
    PolyTrail = '/effects/emitters/default_polytrail_03_emit.bp',
    FxTrails = EffectTemplate.CCommanderOverchargeFxTrail01,

    -- Hit Effects
    FxImpactUnit = EffectTemplate.CCommanderOverchargeHit01,
    FxImpactProp = EffectTemplate.CCommanderOverchargeHit01,
    FxImpactLand = EffectTemplate.CCommanderOverchargeHit01,

    OnImpact = function(self, targetType, targetEntity)
        if targetType ~= 'Shield' and targetType ~= 'Water' and targetType ~= 'Air' and targetType ~= 'UnitAir' and targetType ~= 'Projectile' then
            local RandomFloat = import('/lua/utilities.lua').GetRandomFloat
            local pos = self:GetPosition()
            local radius = self.DamageData.DamageRadius
            local army = self.Army
            
            DamageArea( self, pos, radius, 1, 'Force', true )
            DamageArea( self, pos, radius, 1, 'Force', true )
            
            CreateDecal(pos, RandomFloat(0,2*math.pi), 'crater_radial01_albedo', '', 'Albedo', radius * 2, radius * 2, 150, 40, army)
            CreateDecal(pos, RandomFloat(0,2*math.pi), 'crater_radial01_albedo', '', 'Albedo', radius * 2, radius * 2, 150, 40, army)
        end
        
        OverchargeProjectile.OnImpact(self, targetType, targetEntity)
        CMolecularCannonProjectile.OnImpact(self, targetType, targetEntity)
    end,
    
    OnCreate = function(self)
        OverchargeProjectile.OnCreate(self)
        CMolecularCannonProjectile.OnCreate(self)
    end,
}

TypeClass = CDFCannonMolecular01
