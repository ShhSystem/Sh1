ESX = exports["es_extended"]:getSharedObject()
local Patron = RageUI.CreateMenu("","Patron")
local open,argent,argentindex = false,{"~b~Déposer","~r~Retirer"},1
Patron.Closed = function()
open = true 
end

PatronOpen = function()
if open then 
open = false 
RageUI.Visible(Patron,false)
else
open = true
RageUI.Visible(Patron,true)
while open do
Wait(1)
RageUI.IsVisible(Patron,function()
RageUI.List("Budget Entreprise",argent, argentindex, nil,{},true,{
onSelected = function()

end,
})
end)
end
end