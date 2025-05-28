# Find the path to the git-filter-repo script
$filterRepoPath = pip show git-filter-repo | Select-String "Location:" | ForEach-Object { $_.Line -replace "Location: ", "" }
$filterRepoScript = Join-Path -Path $filterRepoPath -ChildPath "git_filter_repo.py"

# Check if the script exists
if (Test-Path $filterRepoScript) {
    Write-Host "Using git-filter-repo from: $filterRepoScript"
    # Run python with the git-filter-repo script to remove .bolt directory
    python $filterRepoScript --path-glob '.bolt/*' --invert-paths --force
} else {
    Write-Host "Error: Could not find git-filter-repo script. Trying alternative path..."
    # Try alternative locations
    $altPath = Join-Path -Path $filterRepoPath -ChildPath "git-filter-repo"
    if (Test-Path $altPath) {
        Write-Host "Using git-filter-repo from: $altPath"
        python $altPath --path-glob '.bolt/*' --invert-paths --force
    } else {
        Write-Host "Error: Could not find git-filter-repo. Please check your installation."
        exit 1
    }
}
