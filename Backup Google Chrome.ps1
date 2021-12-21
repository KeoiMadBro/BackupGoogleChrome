# Translation from italian to english is in progress.

Write-Host "Looking for the ""User Data"" folder." -ForegroundColor Yellow

if (Test-Path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\") {
    Write-Host "Folder ""User Data"" found." -ForegroundColor Green
    Start-Sleep -Milliseconds 500
    Write-Host ""
    Write-Host "Cleaning cache before backup operations." -ForegroundColor Yellow
    Start-Sleep -Milliseconds 500

    # Folder "Profile -> Cache"
    Write-Host "Chrome -> Cache"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }
        
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }
    
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    # Folder "Code Cache"
    Write-Host "Chrome -> Code Cache"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Code Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }
        
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Code Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }
    
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Code Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }
    
    # Folder "GPUCache"
    Write-Host "Chrome -> GPUCache"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\GPUCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\GPUCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\GPUCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }
    
    # Folder "Service Worker\CacheStorage\"
    Write-Host "Chrome -> Service Worker\CacheStorage\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Service Worker\CacheStorage\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Service Worker\CacheStorage\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Service Worker\CacheStorage\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    # Folder "Service Worker\ScriptCache\"
    Write-Host "Chrome -> Service Worker\ScriptCache\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Service Worker\ScriptCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Service Worker\ScriptCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Service Worker\ScriptCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    # Folder "Application Cache\Cache\"
    Write-Host "Chrome -> Application Cache\Cache\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Application Cache\Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Application Cache\Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\Application Cache\Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }
    
    # Folder "IndexedDB\"
    Write-Host "Chrome -> IndexedDB\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\IndexedDB\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\IndexedDB\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_\IndexedDB\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    # Folder "User Data\GrShaderCache\GPUCache\"
    Write-Host "Chrome -> User Data\GrShaderCache\GPUCache\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\GrShaderCache\GPUCache\" | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    # Folder "User Data\ShaderCache\GPUCache\"
    Write-Host "Chrome -> User Data\ShaderCache\GPUCache\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\ShaderCache\GPUCache\" | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    # Folder "User Data\PnaclTranslationCache\"
    Write-Host "Chrome -> User Data\PnaclTranslationCache\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\PnaclTranslationCache\" | % { $_.fullname } | ForEach-Object {
        Remove-Item -path "$_*" -Recurse -Force -EA SilentlyContinue | Out-Null
    }
        
    Write-Host ""

    $varCartellaChrome = "C:\Users\$ENV:USERNAME\AppData\Local\Google\Chrome"
    $varCartellaBackup = "C:\Users\$ENV:USERNAME\Google Chrome Backup - $ENV:COMPUTERNAME"

    # Looking for a OneDrive folder.
    If ( Test-Path "$env:OneDrive\" ) {
        # Trovata.
        $var7z = "$env:OneDrive\Google Chrome Backup - $ENV:COMPUTERNAME.7z"
        $var7ztmp = "$env:OneDrive\Google Chrome Backup - $ENV:COMPUTERNAME.7z.tmp"
        Write-Host "Creating 7zip backup archive inside the following path -> $var7z" -ForegroundColor Yellow
    }
    ElseIf ( Test-Path "C:\Users\$ENV:USERNAME\Desktop\" ) {
        # Non trovata, creazione archivio sul desktop.
        $var7z = "C:\Users\$ENV:USERNAME\Desktop\Google Chrome Backup - $ENV:COMPUTERNAME.7z"
        $var7ztmp = "C:\Users\$ENV:USERNAME\Desktop\Google Chrome Backup - $ENV:COMPUTERNAME.7z.tmp"
        Write-Host "Creating 7zip backup archive inside the following path -> $var7z" -ForegroundColor Yellow
    }
    ElseIf ( Test-Path "C:\" ) {
        # Desktop non trovato, l'username non corrisponde alla cartella utente, creazione archivio nella root del C.
        $var7z = "C:\Google Chrome Backup - $ENV:COMPUTERNAME.7z"
        $var7ztmp = "C:\Google Chrome Backup - $ENV:COMPUTERNAME.7z.tmp"
        Write-Host "Creating 7zip backup archive inside the following path -> $var7z" -ForegroundColor Yellow
    }
    Write-Host ""

    Write-Host "Controllo e rimozione vecchia cartella di backup." -ForegroundColor Yellow
    if (Test-Path $varCartellaBackup) {
        Write-Host "Presenza vecchia cartella di backup confermata, avvio rimozione." -ForegroundColor Yellow
        Remove-Item -Path $varCartellaBackup -Recurse -Force -EA SilentlyContinue | Out-Null
        Write-Host "Vecchia cartella di backup rimossa." -ForegroundColor Red
    }
    Else {
        Write-Host "Presenza vecchia cartella di backup negativa, meglio." -ForegroundColor Green
    }
    Write-Host ""

    Start-Sleep -Milliseconds 500

    Write-Host "Creazione cartella di backup." -ForegroundColor Yellow
    robocopy $varCartellaChrome $varCartellaBackup /e | Out-Null
    Write-Host "Cartella di backup creata." -ForegroundColor Green
    Write-Host ""

    Start-Sleep -Milliseconds 500

    Write-Host "Controllo presenza vecchio archivio." -ForegroundColor Yellow
    if (Test-Path $var7z) {
        Write-Host "Presenza vecchio archivio confermata." -ForegroundColor Yellow
        Remove-Item -Path $var7z -Recurse -Force -EA SilentlyContinue | Out-Null
        Write-Host "Vecchio archivio rimosso." -ForegroundColor Red
        Write-Host ""
    }
    Else {
        Write-Host "Presenza vecchio archivio negativa." -ForegroundColor Green
        Write-Host ""
    }

    Start-Sleep -Milliseconds 500

    if (Test-Path $var7ztmp) {
        Remove-Item -Path $var7ztmp -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    Start-Sleep -Milliseconds 500

    Write-Host "Creazione nuovo archivio." -ForegroundColor Yellow
    7z a $var7z $varCartellaBackup\* -myx=9 -mx=9 -r -sdel
    Write-Host "Archivio creato." -ForegroundColor Green
    Write-Host ""

    Start-Sleep -Milliseconds 500

    Write-Host "Rimozione cartella di backup."  -ForegroundColor Yellow
    Remove-Item -Path $varCartellaBackup -Recurse -Force -EA SilentlyContinue | Out-Null
    Write-Host "Cartella di backup rimossa." -ForegroundColor Red
    Write-Host ""
    Write-Host "Fine" -ForegroundColor Green
}
Else {
    Write-Host "Cartella ""User Data"" non trovata." -ForegroundColor Red
    Write-Host ""
    Write-Host "Operazione annullata." -ForegroundColor Red
}

Read-Host "Premere invio per continuare."