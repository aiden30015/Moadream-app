# PowerShell script to update Android and iOS configuration files with environment variables

# Load environment variables from .env file
if (Test-Path .env) {
    Get-Content .env | ForEach-Object {
        if ($_ -match '^\s*([^#][^=]+)=(.*)$') {
            $name = $matches[1].Trim()
            $value = $matches[2].Trim()
            Set-Item -Path "env:$name" -Value $value
        }
    }
} else {
    Write-Error "Error: .env file not found"
    exit 1
}

# Check if KAKAO_NATIVE_APP_KEY is set
if (-not $env:KAKAO_NATIVE_APP_KEY) {
    Write-Error "Error: KAKAO_NATIVE_APP_KEY is not set in .env file"
    exit 1
}

Write-Host "Updating Android and iOS configuration files..." -ForegroundColor Green

# Update Android AndroidManifest.xml
$androidManifest = "android\app\src\main\AndroidManifest.xml"
if (Test-Path $androidManifest) {
    $content = Get-Content $androidManifest -Raw
    # Replace kakao URL scheme
    $content = $content -replace 'android:scheme="kakao[a-zA-Z0-9]*"', "android:scheme=`"kakao$env:KAKAO_NATIVE_APP_KEY`""
    $content | Set-Content $androidManifest -NoNewline
    Write-Host "✓ Updated $androidManifest" -ForegroundColor Green
} else {
    Write-Warning "⚠ Warning: $androidManifest not found"
}

# Update iOS Info.plist
$iosPlist = "ios\Runner\Info.plist"
if (Test-Path $iosPlist) {
    $content = Get-Content $iosPlist -Raw
    # Replace kakao URL scheme in Info.plist (only the first occurrence in CFBundleURLSchemes)
    $content = $content -replace '<string>kakao[a-zA-Z0-9]*</string>', "<string>kakao$env:KAKAO_NATIVE_APP_KEY</string>"
    $content | Set-Content $iosPlist -NoNewline
    Write-Host "✓ Updated $iosPlist" -ForegroundColor Green
} else {
    Write-Warning "⚠ Warning: $iosPlist not found"
}

Write-Host "`nDone! Configuration files updated with environment variables." -ForegroundColor Green
