hook.Add("PlayerDeath","DemoteMayor",function(v,k)
    if (v:Team() == TEAM_MAYOR) then
        v:ChangeTeam(TEAM_CITIZEN,true);
        for k, v in ipairs(player.GetAll()) do
            v:PrintMessage(HUD_PRINTCENTER,"The Mayor has been killed!");
        end;
    end;
end);