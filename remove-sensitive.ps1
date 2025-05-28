# Find the path to the git-filter-repo script
$filterRepoPath = pip show git-filter-repo | Select-String "Location:" | ForEach-Object { $_.Line -replace "Location: ", "" }
$filterRepoScript = Join-Path -Path $filterRepoPath -ChildPath "git_filter_repo.py"

# Check if the script exists
if (Test-Path $filterRepoScript) {
    Write-Host "Using git-filter-repo from: $filterRepoScript"
    # Remove the .bolt directory and any references to it
    python $filterRepoScript --path-regex "\.bolt/.*" --invert-paths --force
    python $filterRepoScript --message-callback "return re.sub(b'\.bolt', b'', message)" --force
    # Remove the directory physically if it exists
    if (Test-Path ".bolt") {
        Remove-Item -Path ".bolt" -Recurse -Force
    }
} else {
    Write-Host "Error: Could not find git-filter-repo script"
    exit 1
}
