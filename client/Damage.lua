---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Lucas.
--- DateTime: 09/02/2021 14:52
---

Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()

        local currentWeapon = GetSelectedPedWeapon(ped)
        local weapon_damage = GetPlayerWeaponDamageModifier(ped)

        if parseInt(weapon_damage) > 1.0 then
            vPUNISHMENTS.applyPunish({ reason = "Dano aumentado **(SUSPEITA I)**", punishment = "Kick", requireScreenshoot = false });
        end

        Citizen.Wait(1000)
    end
end)