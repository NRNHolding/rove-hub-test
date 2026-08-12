# Menyalin ROVE HUB terbaru dari folder kerja lalu mendorongnya ke web.
# Sumbernya sengaja di luar repo: folder kerja ada di Dropbox, dan menaruh .git
# di dalam folder yang ter-sync mengundang konflik.

$sumber = "C:\Users\LENOVO\Dropbox\AI Mapping Project\5. Rove Gifts\3. Struktur Organisasi\Rove_Hub_App.html"
$tujuan = Join-Path $PSScriptRoot "index.html"

if (-not (Test-Path $sumber)) {
  Write-Host "Tidak menemukan berkas sumber:" -ForegroundColor Red
  Write-Host "  $sumber"
  exit 1
}

Copy-Item $sumber $tujuan -Force
$ukuran = [math]::Round((Get-Item $tujuan).Length / 1KB)
Write-Host "Disalin ($ukuran KB)." -ForegroundColor Green

Set-Location $PSScriptRoot
git add -A
$adaPerubahan = git status --porcelain
if (-not $adaPerubahan) {
  Write-Host "Tak ada perubahan — versi web sudah sama dengan yang lokal."
  exit 0
}

$pesan = "Perbarui HUB " + (Get-Date -Format "yyyy-MM-dd HH:mm")
git commit -m $pesan
git push
Write-Host ""
Write-Host "Terkirim. GitHub Pages menerbitkan ulang sekitar 1 menit lagi." -ForegroundColor Green
