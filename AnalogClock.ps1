# Get-Processコマンドレットでは、一つのプロセスを取得したときは配列では無いから、.net関数を使用した。
$AnaPross = [System.Diagnostics.Process]::GetProcessesByName("アナログ時計WPF")
$bool = $AnaPross.Length -gt 0
if ($bool){
    Write-Output "時計は起動中です。"
}
else{
    Write-Output "時計を起動します"
}
Start-Sleep 1
