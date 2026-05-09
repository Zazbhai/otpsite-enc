
Get-ChildItem -Path views\admin -Filter *.html | ForEach-Object {
    $f = $_.FullName
    $content = Get-Content $f
    $newContent = $content -replace '<body>', '<body data-admin-route>'
    Set-Content -Path $f -Value $newContent
}
