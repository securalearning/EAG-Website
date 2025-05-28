# Verify that the history has been changed
Write-Host "Checking a few recent commits to verify author changes:"
git log -3 --pretty=format:"%h - %an <%ae> - %s"

# Force push to the remote repository
Write-Host "`n`nReady to force push the rewritten history to the remote repository."
Write-Host "WARNING: This will overwrite the remote history. Anyone else working with this repository will need to re-clone or reset their local copy."

$confirmation = Read-Host "Do you want to proceed with force-pushing? (y/N)"
if ($confirmation -eq 'y' -or $confirmation -eq 'Y') {
    Write-Host "Force-pushing to remote repository..."
    git push --force
    Write-Host "Force-push completed."
} else {
    Write-Host "Force-push cancelled. You can manually push later using 'git push --force'."
}
