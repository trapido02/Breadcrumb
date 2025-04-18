local f = CreateFrame("Frame")
f:RegisterEvent("QUEST_DETAIL")

f:SetScript("OnEvent", function(self, event, ...)
    local title = GetTitleText()
    if Breadcrumb_NextQuests[title] then
        message("BREADCRUMB!\n Please finish \"" .. Breadcrumb_NextQuests[title] .. "\" first before doing this one.")
    end
end)