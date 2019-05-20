local db;
local icon;
local saveVar;

local iconName			= "Yatlas";
local iconImg			= "Interface\\Icons\\ability_townwatch";
local iconOnClick		= function () YatlasFrame:Toggle(); end;
local iconOnTooltipShow	= function (tooltip) tooltip:SetText(iconName); end;

db = LibStub("LibDataBroker-1.1"):NewDataObject(iconName,
{
	type = "data source",
	text = iconName,
	icon = iconImg,
	OnClick = function() iconOnClick(); end,
	OnTooltipShow = function(tooltip) iconOnTooltipShow(tooltip); end,
});
icon = LibStub("LibDBIcon-1.0");
icon:Register(iconName, db, saveVar);
