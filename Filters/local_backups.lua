local function checkLocalBackups(Content)
  local isNXE2GODBackup = (string.match(Content.Directory, "0000000000000000\\[a-fA-F0-9]{8}\\00007000\\backup") ~= nil)
  local isBAKFile = (string.lower(string.sub(Content.Executable, -4)) == ".bak")
  return isNXE2GODBackup, isBAKFile
end

GameListFilterCategories.User["Show Local Backups"] = function(Content)
  local isNXE2GODBackup, isBAKFile = checkLocalBackups(Content)
  return isNXE2GODBackup or isBAKFile
end

GameListFilterCategories.User["Hide Local Backups"] = function(Content)
  local isNXE2GODBackup, isBAKFile = checkLocalBackups(Content)
  return not isNXE2GODBackup and not isBAKFile
end
