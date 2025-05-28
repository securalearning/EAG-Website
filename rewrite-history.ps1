# Define the email mappings for replacement
$emailMappings = @{
    "techtushya@gmail.com" = @{
        "name" = "SecuraLearning"
        "email" = "coachdarshana@gmail.com"
    }
    "f20230150@hyderabad.bits-pilani.ac.in" = @{
        "name" = "SecuraLearning"
        "email" = "coachdarshana@gmail.com"
    }
}

# Create a mailmap file for git-filter-repo
$mailmapContent = ""
foreach ($oldEmail in $emailMappings.Keys) {
    $newName = $emailMappings[$oldEmail].name
    $newEmail = $emailMappings[$oldEmail].email
    $mailmapContent += "$newName <$newEmail> <$oldEmail>`n"
}

# Write the mailmap file
$mailmapContent | Out-File -FilePath ".\mailmap.txt" -Encoding utf8 -NoNewline

# Find the path to the git-filter-repo script
$filterRepoPath = pip show git-filter-repo | Select-String "Location:" | ForEach-Object { $_.Line -replace "Location: ", "" }
$filterRepoScript = Join-Path -Path $filterRepoPath -ChildPath "git_filter_repo.py"

# Check if the script exists
if (Test-Path $filterRepoScript) {
    Write-Host "Using git-filter-repo from: $filterRepoScript"
    # Run python with the git-filter-repo script
    python $filterRepoScript --mailmap ".\mailmap.txt" --force
} else {
    Write-Host "Error: Could not find git-filter-repo script. Trying alternative path..."
    # Try alternative locations
    $altPath = Join-Path -Path $filterRepoPath -ChildPath "git-filter-repo"
    if (Test-Path $altPath) {
        Write-Host "Using git-filter-repo from: $altPath"
        python $altPath --mailmap ".\mailmap.txt" --force
    } else {
        Write-Host "Error: Could not find git-filter-repo. Please check your installation."
        Write-Host "Try running: python -m git_filter_repo --mailmap .\mailmap.txt --force"
        exit 1
    }
}

# Remove the temporary mailmap file
Remove-Item -Path ".\mailmap.txt"

Write-Host "History has been rewritten. All commits from the specified old emails now appear as authored by SecuraLearning <coachdarshana@gmail.com>"
Write-Host "You'll need to force-push these changes with 'git push --force'"
