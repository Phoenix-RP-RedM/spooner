-- #############################################################################
-- #                                                                           #
-- #             __________._                         .__                      #
-- #            \______   \  |__   ____   ____   ____ |__|__  ___              #
-- #             |     ___/  |  \ /  _ \_/ __ \ /    \|  \  \/  /              #
-- #             |    |   |   Y  (  <_> )  ___/|   |  \  |>    <               #
-- #             |____|   |___|  /\____/ \___  >___|  /__/__/\_ \              #
-- #                           \/            \/     \/         \/              #
-- #                                                                           #
-- #############################################################################
-- DO NOT: Remove the version updater below! This is what gives you feetback
-- when there is a new update available. Removing will result in the system
-- unable to check for updates, and will result in startup errors.
--------------------------------------------------------------------------------

print("spooner: Server: Version.lua Start...")
CreateThread(function()
  local Name = GetCurrentResourceName()
  local Version = GetResourceMetadata(Name, "version")
  TriggerEvent("PhoenixSync>Modules>Version", { Name, { Version } })
end)