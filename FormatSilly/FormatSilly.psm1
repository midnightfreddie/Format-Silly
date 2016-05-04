function Format-Silly {
    param (
        $String
    )
    $Combining = 0x0300 .. 0x036F | ForEach-Object { [char]$_ } | Sort-Object { Get-Random }

    $i = 0

    ($String.ToCharArray() | ForEach-Object { $_ -replace '[A-Za-z]', "`$0$($Combining[$i++])" }) -join ""
}