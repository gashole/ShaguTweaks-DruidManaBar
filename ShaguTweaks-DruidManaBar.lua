local _, playerClass = UnitClass("player")
if playerClass ~= "DRUID" then return end

ShaguTweaks.HookAddonOrVariable("DruidManaBarBackground", function()
    if ShaguTweaks.DarkMode then DruidManaBar.bd:SetVertexColor(.3, .3, .3, .9) end
    if ShaguTweaks_config["Real Health Numbers"] == 1 then
        DruidManaBar.unit = DruidManaBar:GetParent().unit
        DruidManaBar.text:SetFontObject(GameFontWhite)
        DruidManaBar.text:SetFont(STANDARD_TEXT_FONT, 10, "OUTLINE")
    end
    if ShaguTweaks_config["Unit Frame Health Colors"] == 1 then
        local r, g, b = DruidManaBar:GetStatusBarColor()
        DruidManaBar.text:SetTextColor((r + 2) / 3, (g + 2) / 3, (b + 2) / 3, 1)
    end
end)