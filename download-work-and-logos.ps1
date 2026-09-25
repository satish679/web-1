# Run this from inside the BK-Decomart folder (same level as backend/ and frontend/).
# Downloads: 10 real client/partner logos + 37 curated "Our Works" product photos
# from the old site, saved with the exact filenames the code expects.

$outDir = "backend\static\img\generated"
New-Item -ItemType Directory -Force -Path $outDir | Out-Null

function Get-One($url, $filename) {
    $dest = Join-Path $outDir $filename
    Write-Host "Downloading $filename ..."
    try {
        Invoke-WebRequest -Uri $url -OutFile $dest -UseBasicParsing
    } catch {
        Write-Host "  FAILED: $url -- $_" -ForegroundColor Red
    }
}

# ---------- Client / partner logos ----------
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/hannna.jpg"     "client-hannah-joseph.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/duwaraka.jpg"   "client-dwarka-palace.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/chellam.jpg"    "client-chellam-saraswathy.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/bharathi-hos.jpg" "client-bharathi-infinity.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/anjaliu.jpg"    "client-anjali.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/star.jpg"       "client-star.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/union.jpg"      "client-union.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/smj.jpg"        "client-smj.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/royal.jpg"      "client-royal.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/meenakshi.jpg"  "client-meenakshi.jpg"

# ---------- Hero photo (real "Our Works" featured shot, replaces AI hero) ----------
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20201222_165649-1-scaled.jpg" "hero-living.jpg"

# ---------- Curtains (10) ----------
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20201008_182239-scaled.jpg" "work-curtains-1.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG-20220209-WA0045.jpg" "work-curtains-2.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG-20231110-WA0006.jpg" "work-curtains-3.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG-20231121-WA0016.jpg" "work-curtains-4.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG-20231201-WA0016.jpg" "work-curtains-5.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG-20231221-WA0038.jpg" "work-curtains-6.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG-20231227-WA0052.jpg" "work-curtains-7.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG-20240103-WA0027.jpg" "work-curtains-8.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG-20240110-WA0018.jpg" "work-curtains-9.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/P_20200829_190636_1_p-scaled.jpg" "work-curtains-10.jpg"

# ---------- Blinds (8) ----------
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20210417_172633-scaled.jpg" "work-blinds-1.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20210322_125937-scaled.jpg" "work-blinds-2.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20201023_203557-scaled.jpg" "work-blinds-3.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20201023_214814-scaled.jpg" "work-blinds-4.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20201024_125812-scaled.jpg" "work-blinds-5.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20201026_160456-scaled.jpg" "work-blinds-6.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20201108_173355-scaled.jpg" "work-blinds-7.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20200915_171256-scaled.jpg" "work-blinds-8.jpg"

# ---------- Wallpaper (6) ----------
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/Wallpaper-02.jpeg" "work-wallpaper-1.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/Wallpaper-03.jpeg" "work-wallpaper-2.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2023-07-29-at-7.58.34-PM-1.jpeg" "work-wallpaper-3.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2023-07-29-at-7.58.34-PM.jpeg" "work-wallpaper-4.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2023-07-29-at-7.58.35-PM-2.jpeg" "work-wallpaper-5.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/WhatsApp-Image-2023-07-29-at-7.58.36-PM-1.jpeg" "work-wallpaper-6.jpg"

# ---------- Vertical Blinds (4) ----------
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/Vertical-Blinds-01.jpg" "work-vertical-1.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/Vertical-Blinds-02.jpg" "work-vertical-2.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/Vertical-Blinds-03.jpg" "work-vertical-3.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/Vertical-Blinds-04.jpg" "work-vertical-4.jpg"

# ---------- Zebra Blinds (4) ----------
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/Zebra-Blinds-01.jpg" "work-zebra-1.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/Zebra-Blinds-02.jpeg" "work-zebra-2.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/Zebra-Blinds-03.jpg" "work-zebra-3.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/Zebra-Blinds-04.jpeg" "work-zebra-4.jpg"

# ---------- Printed Roller Blinds (4) ----------
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20200910_111038-scaled.jpg" "work-roller-1.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20201107_125329-scaled.jpg" "work-roller-2.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20210304_171510-scaled.jpg" "work-roller-3.jpg"
Get-One "https://bkdecomart.com/wp-content/uploads/2025/09/IMG_20210724_115054-scaled.jpg" "work-roller-4.jpg"

Write-Host "`nDone. Check $outDir for the downloaded files."
Write-Host "IMPORTANT: delete the old AI-generated hero-living.png in that folder now," -ForegroundColor Yellow
Write-Host "so the new real hero-living.jpg actually gets used (the site checks .png first)." -ForegroundColor Yellow
