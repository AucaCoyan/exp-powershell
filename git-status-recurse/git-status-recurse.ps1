Get-ChildItem -Recurse -Force -Filter .git | 
ForEach-Object {
    $g = $PSItem.Fullname;
    $r = $g.Substring(0, $g.Length - 5);
    Write-Host($r);
    # git -C $r status --porcelain --branch 
    git -C $r status -s
}