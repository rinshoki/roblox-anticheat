game.DescendantAdded:Connect(function(arg1)
	if arg1:IsDescendantOf(game:GetService("CoreGui")) then
		if arg1.Name == "Freecam" then return else
			local b=game.ReplicatedStorage.Remotes.ACServer
			b:FireServer(game.Players.LocalPlayer.Name)
			arg1:Destroy()
		end
	end
end)