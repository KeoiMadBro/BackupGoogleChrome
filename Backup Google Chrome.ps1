# Translation from italian to english is in progress.

Write-Host "Looking for the ""User Data"" folder." -ForegroundColor Yellow

if (Test-Path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\") {
    Write-Host "Folder ""User Data"" found." -ForegroundColor Green
    Start-Sleep -Milliseconds 500
    Write-Host ""
    Write-Host "Cleaning cache before backup operations." -ForegroundColor Yellow
    Start-Sleep -Milliseconds 500

    # Cartella "Profiles's folder -> Cache"
    Write-Host "Profiles's folder -> Cache"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Cache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }
        
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Cache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }
    
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Cache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    # Cartella "Profiles's folder -> Code Cache"
    Write-Host "Profiles's folder -> Code Cache"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Code Cache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }
        
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Code Cache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }
    
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Code Cache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }
    
    # Cartella "Profiles's folder -> GPUCache"
    Write-Host "Profiles's folder -> GPUCache"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\GPUCache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\GPUCache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\GPUCache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    # Cartella "Profiles's folder -> Session Storage"
    Write-Host "Profiles's folder -> Session Storage"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Session Storage\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Session Storage\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Session Storage\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    # Cartella "Profiles's folder -> Sessions"
    Write-Host "Profiles's folder -> Sessions"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Sessions\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Sessions\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Sessions\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }
    
    # Cartella "Profiles's folder -> Service Worker\CacheStorage\"
    Write-Host "Profiles's folder -> Service Worker\CacheStorage\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Service Worker\CacheStorage\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Service Worker\CacheStorage\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Service Worker\CacheStorage\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    # Cartella "Profiles's folder -> Service Worker\Database\"
    Write-Host "Profiles's folder -> Service Worker\Database\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Service Worker\Database\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Service Worker\Database\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Service Worker\Database\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    # Cartella "Profiles's folder -> Service Worker\ScriptCache\"
    Write-Host "Profiles's folder -> Service Worker\ScriptCache\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Service Worker\ScriptCache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Service Worker\ScriptCache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Service Worker\ScriptCache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    # Cartella "Profiles's folder -> Application Cache\Cache\"
    Write-Host "Profiles's folder -> Application Cache\Cache\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Application Cache\Cache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Application Cache\Cache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Application Cache\Cache\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }
    
    # Cartella "Profiles's folder -> IndexedDB\"
    Write-Host "Profiles's folder -> IndexedDB\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\IndexedDB\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\IndexedDB\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\IndexedDB\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    # Cartella "Profiles's folder -> Local Storage\leveldb\"
    Write-Host "Profiles's folder -> Local Storage\leveldb\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Local Storage\leveldb\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Local Storage\leveldb\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Local Storage\leveldb\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    # Cartella "Profiles's folder -> Safe Browsing Network\"
    Write-Host "Profiles's folder -> Safe Browsing Network\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Safe Browsing Network\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Safe Browsing Network\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Safe Browsing Network\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    # Cartella "Profiles's folder -> Storage\"
    Write-Host "Profiles's folder -> Storage\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Default" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Storage\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Guest Profile" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Storage\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -filter "Profile ???" -Directory | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_\Storage\*" -Recurse -Force -EA SilentlyContinue -Verbose
    }
    
    # Cartella "Root's folder -> User Data\GrShaderCache\"
    Write-Host "Root's folder -> User Data\GrShaderCache\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\GrShaderCache\" | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    # Cartella "Root's folder -> User Data\ShaderCache\"
    Write-Host "Root's folder -> User Data\ShaderCache\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\ShaderCache\" | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_*" -Recurse -Force -EA SilentlyContinue -Verbose
    }

    # Cartella "Root's folder -> User Data\PnaclTranslationCache\"
    Write-Host "Root's folder -> User Data\PnaclTranslationCache\"
    Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\PnaclTranslationCache\" | % { $_.fullname } | ForEach-Object {
        Remove-Item -Path "$_*" -Recurse -Force -EA SilentlyContinue -Verbose
    }
        
    Write-Host ""

    $varChromeFolder = "C:\Users\$ENV:USERNAME\AppData\Local\Google\Chrome"
    $varBackupFolder = "C:\Users\$ENV:USERNAME\Google Chrome Backup - $ENV:COMPUTERNAME"

    # Looking for a OneDrive folder.
    If ( Test-Path "$env:OneDrive\" ) {
        # OneDrive folder found.
        $var7z = "$env:OneDrive\Google Chrome Backup - $ENV:COMPUTERNAME.7z"
        $var7ztmp = "$env:OneDrive\Google Chrome Backup - $ENV:COMPUTERNAME.7z.tmp"
        Write-Host "The 7-Zip archive will be created here -> $var7z" -ForegroundColor Yellow
    }
    ElseIf ( Test-Path "C:\Users\$ENV:USERNAME\Desktop\" ) {
        # OneDrive folder not found, archive will be created in the desktop folder.
        $var7z = "C:\Users\$ENV:USERNAME\Desktop\Google Chrome Backup - $ENV:COMPUTERNAME.7z"
        $var7ztmp = "C:\Users\$ENV:USERNAME\Desktop\Google Chrome Backup - $ENV:COMPUTERNAME.7z.tmp"
        Write-Host "The 7-Zip archive will be created here -> $var7z" -ForegroundColor Yellow
    }
    ElseIf ( Test-Path "C:\" ) {
        # Desktop folder not found, username doesn't match the user folder, 7-Zip archive will be created in C:\ .
        $var7z = "C:\Google Chrome Backup - $ENV:COMPUTERNAME.7z"
        $var7ztmp = "C:\Google Chrome Backup - $ENV:COMPUTERNAME.7z.tmp"
        Write-Host "The 7-Zip archive will be created here -> $var7z" -ForegroundColor Yellow
    }
    Else {
        Write-Host "C:\ not found, operation cancelled, exiting PowerShell in 5 seconds." -ForegroundColor Red
        Start-Sleep -Milliseconds 5000
        exit
    }

    Write-Host ""

    Write-Host "Checking if there is an older backup folder." -ForegroundColor Yellow
    if ( Test-Path $varBackupFolder ) {
        Write-Host "Older backup folder found, deleting it." -ForegroundColor Yellow
        Remove-Item -Path $varBackupFolder -Recurse -Force -EA SilentlyContinue | Out-Null
        Write-Host "Older backup folder deleted." -ForegroundColor Green
    }
    Else {
        Write-Host "Nope, all good." -ForegroundColor Green
    }
    Write-Host ""

    Start-Sleep -Milliseconds 500

    Write-Host "Backup folder creation." -ForegroundColor Yellow
    robocopy $varChromeFolder $varBackupFolder /e | Out-Null
    Write-Host "Backup folder created." -ForegroundColor Green
    Write-Host ""

    Start-Sleep -Milliseconds 500

    Write-Host "Checking if there is another backup already." -ForegroundColor Yellow
    if (Test-Path $var7z) {
        Write-Host "Older 7-Zip found, deleting it." -ForegroundColor Yellow
        Remove-Item -Path $var7z -Recurse -Force -EA SilentlyContinue | Out-Null
        Write-Host "Older 7-Zip archive deleted." -ForegroundColor Green
        Write-Host ""
    }
    Else {
        Write-Host "Older 7-Zip not found." -ForegroundColor Green
        Write-Host ""
    }

    Start-Sleep -Milliseconds 500

    if (Test-Path $var7ztmp) {
        Remove-Item -Path $var7ztmp -Recurse -Force -EA SilentlyContinue | Out-Null
    }

    Start-Sleep -Milliseconds 500

    Write-Host "Creating the 7-Zip archive." -ForegroundColor Yellow
    7z a $var7z $varBackupFolder\* -myx=9 -mx=9 -r -sdel
    Write-Host "Done." -ForegroundColor Green
    Write-Host ""

    Start-Sleep -Milliseconds 500

    Write-Host "Deleting the backup folder."  -ForegroundColor Yellow
    Remove-Item -Path $varBackupFolder -Recurse -Force -EA SilentlyContinue | Out-Null
    Write-Host "Backup folder removed." -ForegroundColor Green
    Write-Host ""
    Write-Host "Done, the backup was completed successfully." -ForegroundColor Green
    Write-Host "Backup was created in this path -> " $var7z -ForegroundColor Green
}
Else {
    Write-Host "Operation cancelled for the following reason :"
    Write-Host """User Data"" folder not found, dheck if Google Chrome is installed inside the following path : C:\Users\>Your Username<\AppData\Googlel\Chrome\" .
}

Write-Host ""
Read-Host "Press enter to keep rollin'."