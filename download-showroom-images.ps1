# Run this from inside the BK-Decomart folder (same level as backend/ and frontend/).
# Downloads all 37 real showroom photos from the old site and saves them as
# backend/static/img/generated/showroom-1.jpg ... showroom-37.jpg

$urls = @(
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.53.38-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.19.34-PM-1.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.05.48-PM-1.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.05.48-PM-2.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.05.48-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.22.50-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.05.49-PM-2.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.22.52-PM-1.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.05.49-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.05.50-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.19.34-PM-2.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.22.49-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.22.50-PM-1.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.05.49-PM-1.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.22.51-PM-1.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.22.52-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.53.37-PM-1.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.53.37-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.53.38-PM-1.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-12.55.04-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.37-PM-1.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.37-PM-2.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.37-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.38-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.39-PM-1.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.39-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.40-PM-1.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.40-PM-2.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.40-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.41-PM-1.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.41-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.41-PM-2.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.42-PM-3.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.43-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.44-PM-3.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2025-09-20-at-1.20.44-PM.jpeg",
    "https://bkdecomart.com/wp-content/uploads/2025/09/about-us-1-scaled.jpg"
)

$outDir = "backend\static\img\generated"
New-Item -ItemType Directory -Force -Path $outDir | Out-Null

for ($i = 0; $i -lt $urls.Count; $i++) {
    $num = $i + 1
    $dest = Join-Path $outDir "showroom-$num.jpg"
    Write-Host "Downloading showroom-$num.jpg ..."
    try {
        Invoke-WebRequest -Uri $urls[$i] -OutFile $dest -UseBasicParsing
    } catch {
        Write-Host "  FAILED: $($urls[$i]) -- $_" -ForegroundColor Red
    }
}

Write-Host "`nDone. Check $outDir for the downloaded files."
