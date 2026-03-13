param(
    [string]$Platform = ""
)

$ErrorActionPreference = "Stop"

# Name of image/container to match the bash script defaults.
$Image = "lab-website-renderer:latest"
$Container = "lab-website-renderer"
$WorkingDir = (Get-Location).Path

Write-Host "Building Docker image: $Image"

$buildArgs = @("build")
if ($Platform) {
    $buildArgs += @("--platform", $Platform)
}
$buildArgs += @("--tag", $Image, "--file", "./.docker/Dockerfile", ".")

& docker @buildArgs
if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}

Write-Host "Running container: $Container"

$runArgs = @("run")
if ($Platform) {
    $runArgs += @("--platform", $Platform)
}
$runArgs += @(
    "--name", $Container,
    "--init",
    "--rm",
    "--interactive",
    "--tty",
    "--publish", "4000:4000",
    "--publish", "35729:35729",
    "--volume", "${WorkingDir}:/usr/src/app",
    $Image
)

# Forward all remaining script args to the container command.
$runArgs += $args

& docker @runArgs
exit $LASTEXITCODE
