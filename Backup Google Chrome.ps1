# Translation from italian to english is in progress.

Write-Host "Looking for the ""User Data"" folder." -ForegroundColor Yellow

if (Test-Path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\") {
    Write-Host "Folder ""User Data"" found." -ForegroundColor Green
    Start-Sleep -Milliseconds 100
    Write-Host ""
    Write-Host "Cleaning cache files before backup operations." -ForegroundColor Yellow
    Start-Sleep -Milliseconds 100

    $totalFilesCount = 0

    #############################################################################################################################
    #############################################################################################################################
    # Folder -> "Profiles's folder -> Cache".
    Write-Host "Profiles's folder -> Cache" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Cache\', '\Cache\')
        $filescount = Get-ChildItem -Path "$fixedPath\Cache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Cache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Cache\', '\Cache\')
        $filescount = Get-ChildItem -Path "$fixedPath\Cache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Cache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Cache\', '\Cache\')
        $filescount = Get-ChildItem -Path "$fixedPath\Cache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Cache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Profiles's folder -> Code Cache"
    Write-Host "Profiles's folder -> Code Cache" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Code Cache\', '\Code Cache\')
        $filescount = Get-ChildItem -Path "$fixedPath\Code Cache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Code Cache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Code Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Code Cache\', '\Code Cache\')
        $filescount = Get-ChildItem -Path "$fixedPath\Code Cache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Code Cache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Code Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Code Cache\', '\Code Cache\')
        $filescount = Get-ChildItem -Path "$fixedPath\Code Cache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Code Cache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Code Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Profiles's folder -> GPUCache"
    Write-Host "Profiles's folder -> GPUCache" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \GPUCache\', '\GPUCache\')
        $filescount = Get-ChildItem -Path "$fixedPath\GPUCache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\GPUCache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\GPUCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \GPUCache\', '\GPUCache\')
        $filescount = Get-ChildItem -Path "$fixedPath\GPUCache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\GPUCache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\GPUCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \GPUCache\', '\GPUCache\')
        $filescount = Get-ChildItem -Path "$fixedPath\GPUCache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\GPUCache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\GPUCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Profiles's folder -> Session Storage"
    Write-Host "Profiles's folder -> Session Storage" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Session Storage\', '\Session Storage\')
        $filescount = Get-ChildItem -Path "$fixedPath\Session Storage\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Session Storage\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Session Storage\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Session Storage\', '\Session Storage\')
        $filescount = Get-ChildItem -Path "$fixedPath\Session Storage\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Session Storage\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Session Storage\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Session Storage\', '\Session Storage\')
        $filescount = Get-ChildItem -Path "$fixedPath\Session Storage\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Session Storage\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Session Storage\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Profiles's folder -> Sessions"
    Write-Host "Profiles's folder -> Sessions" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Sessions\', '\Sessions\')
        $filescount = Get-ChildItem -Path "$fixedPath\Sessions\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Sessions\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Sessions\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Sessions\', '\Sessions\')
        $filescount = Get-ChildItem -Path "$fixedPath\Sessions\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Sessions\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Sessions\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Sessions\', '\Sessions\')
        $filescount = Get-ChildItem -Path "$fixedPath\Sessions\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Sessions\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Sessions\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Profiles's folder -> Service Worker\CacheStorage\"
    Write-Host "Profiles's folder -> Service Worker\CacheStorage\" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Service Worker\CacheStorage\', '\Service Worker\CacheStorage\')
        $filescount = Get-ChildItem -Path "$fixedPath\Service Worker\CacheStorage\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Service Worker\CacheStorage\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Service Worker\CacheStorage\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Service Worker\CacheStorage\', '\Service Worker\CacheStorage\')
        $filescount = Get-ChildItem -Path "$fixedPath\Service Worker\CacheStorage\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Service Worker\CacheStorage\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Service Worker\CacheStorage\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Service Worker\CacheStorage\', '\Service Worker\CacheStorage\')
        $filescount = Get-ChildItem -Path "$fixedPath\Service Worker\CacheStorage\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Service Worker\CacheStorage\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Service Worker\CacheStorage\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Profiles's folder -> Service Worker\Database\"
    Write-Host "Profiles's folder -> Service Worker\Database\" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Service Worker\Database\', '\Service Worker\Database\')
        $filescount = Get-ChildItem -Path "$fixedPath\Service Worker\Database\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Service Worker\Database\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Service Worker\Database\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Service Worker\Database\', '\Service Worker\Database\')
        $filescount = Get-ChildItem -Path "$fixedPath\Service Worker\Database\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Service Worker\Database\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Service Worker\Database\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Service Worker\Database\', '\Service Worker\Database\')
        $filescount = Get-ChildItem -Path "$fixedPath\Service Worker\Database\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Service Worker\Database\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Service Worker\Database\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Profiles's folder -> Service Worker\ScriptCache\"
    Write-Host "Profiles's folder -> Service Worker\ScriptCache\" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Service Worker\ScriptCache\', '\Service Worker\ScriptCache\')
        $filescount = Get-ChildItem -Path "$fixedPath\Service Worker\ScriptCache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Service Worker\ScriptCache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Service Worker\ScriptCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Service Worker\ScriptCache\', '\Service Worker\ScriptCache\')
        $filescount = Get-ChildItem -Path "$fixedPath\Service Worker\ScriptCache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Service Worker\ScriptCache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Service Worker\ScriptCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Service Worker\ScriptCache\', '\Service Worker\ScriptCache\')
        $filescount = Get-ChildItem -Path "$fixedPath\Service Worker\ScriptCache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Service Worker\ScriptCache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Service Worker\ScriptCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Profiles's folder -> Application Cache\Cache\"
    Write-Host "Profiles's folder -> Application Cache\Cache\" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Application Cache\Cache\', '\Application Cache\Cache\')
        $filescount = Get-ChildItem -Path "$fixedPath\Application Cache\Cache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Application Cache\Cache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Application Cache\Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Application Cache\Cache\', '\Application Cache\Cache\')
        $filescount = Get-ChildItem -Path "$fixedPath\Application Cache\Cache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Application Cache\Cache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Application Cache\Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Application Cache\Cache\', '\Application Cache\Cache\')
        $filescount = Get-ChildItem -Path "$fixedPath\Application Cache\Cache\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Application Cache\Cache\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Application Cache\Cache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Profiles's folder -> IndexedDB\"
    Write-Host "Profiles's folder -> IndexedDB\" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \IndexedDB\', '\IndexedDB\')
        $filescount = Get-ChildItem -Path "$fixedPath\IndexedDB\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\IndexedDB\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\IndexedDB\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \IndexedDB\', '\IndexedDB\')
        $filescount = Get-ChildItem -Path "$fixedPath\IndexedDB\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\IndexedDB\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\IndexedDB\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \IndexedDB\', '\IndexedDB\')
        $filescount = Get-ChildItem -Path "$fixedPath\IndexedDB\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\IndexedDB\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\IndexedDB\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Profiles's folder -> Local Storage\leveldb\"
    Write-Host "Profiles's folder -> Local Storage\leveldb\" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Local Storage\leveldb\', '\Local Storage\leveldb\')
        $filescount = Get-ChildItem -Path "$fixedPath\Local Storage\leveldb\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Local Storage\leveldb\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Local Storage\leveldb\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Local Storage\leveldb\', '\Local Storage\leveldb\')
        $filescount = Get-ChildItem -Path "$fixedPath\Local Storage\leveldb\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Local Storage\leveldb\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Local Storage\leveldb\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Local Storage\leveldb\', '\Local Storage\leveldb\')
        $filescount = Get-ChildItem -Path "$fixedPath\Local Storage\leveldb\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Local Storage\leveldb\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Local Storage\leveldb\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Profiles's folder -> Safe Browsing Network"
    Write-Host "Profiles's folder -> Safe Browsing Network" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Safe Browsing Network\', '\Safe Browsing Network\')
        $filescount = Get-ChildItem -Path "$fixedPath\Safe Browsing Network\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Safe Browsing Network\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Safe Browsing Network\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Safe Browsing Network\', '\Safe Browsing Network\')
        $filescount = Get-ChildItem -Path "$fixedPath\Safe Browsing Network\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Safe Browsing Network\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Safe Browsing Network\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Safe Browsing Network\', '\Safe Browsing Network\')
        $filescount = Get-ChildItem -Path "$fixedPath\Safe Browsing Network\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Safe Browsing Network\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Safe Browsing Network\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Profiles's folder -> Storage"
    Write-Host "Profiles's folder -> Storage" -ForegroundColor Yellow
    # Default Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Default" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Storage\', '\Storage\')
        $filescount = Get-ChildItem -Path "$fixedPath\Storage\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Storage\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Storage\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Guest Profile
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Guest Profile" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Storage\', '\Storage\')
        $filescount = Get-ChildItem -Path "$fixedPath\Storage\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Storage\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Storage\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    # Profile *
    $profileFolders = Get-ChildItem "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\" -Filter "Profile *" -Directory
    ForEach ($rowprofileFolders in $profileFolders) {
        $fixedPath = $rowprofileFolders.FullName.replace(' \Storage\', '\Storage\')
        $filescount = Get-ChildItem -Path "$fixedPath\Storage\*" -Recurse -Force -EA SilentlyContinue
        Write-Host $fixedPath\Storage\ " contains " $filescount.Count " files. "
        #Remove-Item -Path "$fixedPath\Storage\*" -Recurse -Force -EA SilentlyContinue | Out-Null
        $totalFilesCount = $filescount.Count + $totalFilesCount
    }
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Google Chrome's root folder -> User Data\GrShaderCache\"
    Write-Host "Google Chrome's root folder -> User Data\GrShaderCache\" -ForegroundColor Yellow
    $filescount = Get-ChildItem -Path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\GrShaderCache\*" -Recurse -Force -EA SilentlyContinue
    Write-Host "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\GrShaderCache\ contains " $filescount.Count " files. "
    #Remove-Item -Path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\GrShaderCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    $totalFilesCount = $filescount.Count + $totalFilesCount
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Google Chrome's root folder -> User Data\ShaderCache\"
    Write-Host "Google Chrome's root folder -> User Data\ShaderCache\" -ForegroundColor Yellow
    $filescount = Get-ChildItem -Path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\ShaderCache\*" -Recurse -Force -EA SilentlyContinue
    Write-Host "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\ShaderCache\ contains " $filescount.Count " files. "
    #Remove-Item -Path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\ShaderCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    $totalFilesCount = $filescount.Count + $totalFilesCount
    Write-Host ""
    #############################################################################################################################
    #############################################################################################################################
    # Cartella "Google Chrome's root folder -> User Data\PnaclTranslationCache\"
    Write-Host "Google Chrome's root folder -> User Data\PnaclTranslationCache\" -ForegroundColor Yellow
    $filescount = Get-ChildItem -Path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\PnaclTranslationCache\*" -Recurse -Force -EA SilentlyContinue
    Write-Host "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\PnaclTranslationCache\ contains " $filescount.Count " files. "
    #Remove-Item -Path "C:\Users\$env:USERNAME\AppData\Local\Google\Chrome\User Data\PnaclTranslationCache\*" -Recurse -Force -EA SilentlyContinue | Out-Null
    $totalFilesCount = $filescount.Count + $totalFilesCount
    Write-Host ""
    Write-Host "Total cache files deleted ---> " $totalFilesCount -ForegroundColor Cyan
    #############################################################################################################################
    #############################################################################################################################


        
    Write-Host ""
    Write-Host "Total cache files deleted " $totalFilesCount -ForegroundColor Cyan
    Write-Host ""

    $varChromeFolder = "C:\Users\$ENV:USERNAME\AppData\Local\Google\Chrome"
    $varBackupFolder = "C:\Users\$ENV:USERNAME\Google Chrome Backup - $ENV:COMPUTERNAME"

    # Looking for a OneDrive folder.
    If (Test-Path "$env:OneDrive\") {
        # OneDrive folder found.
        $var7z = "$env:OneDrive\Google Chrome Backup - $ENV:COMPUTERNAME.7z"
        $var7ztmp = "$env:OneDrive\Google Chrome Backup - $ENV:COMPUTERNAME.7z.tmp"
        Write-Host "The 7-Zip archive will be created here -> $var7z" -ForegroundColor Yellow
    }
    ElseIf (Test-Path "C:\Users\$ENV:USERNAME\Desktop\") {
        # OneDrive folder not found, archive will be created in the desktop folder.
        $var7z = "C:\Users\$ENV:USERNAME\Desktop\Google Chrome Backup - $ENV:COMPUTERNAME.7z"
        $var7ztmp = "C:\Users\$ENV:USERNAME\Desktop\Google Chrome Backup - $ENV:COMPUTERNAME.7z.tmp"
        Write-Host "The 7-Zip archive will be created here -> $var7z" -ForegroundColor Yellow
    }
    ElseIf (Test-Path "C:\") {
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
    if (Test-Path $varBackupFolder) {
        Write-Host "Older backup folder found, deleting it." -ForegroundColor Yellow
        Remove-Item -Path $varBackupFolder -Recurse -Force -EA SilentlyContinue | Out-Null
        Write-Host "Older backup folder deleted." -ForegroundColor Green
    }
    Else {
        Write-Host "Nope, all good." -ForegroundColor Green
    }
    Write-Host ""

    Start-Sleep -Milliseconds 100

    Write-Host "Backup folder creation." -ForegroundColor Yellow
    robocopy $varChromeFolder $varBackupFolder /e | Out-Null
    Write-Host "Backup folder created." -ForegroundColor Green
    Write-Host ""

    Start-Sleep -Milliseconds 100

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

    Start-Sleep -Milliseconds 100

    Write-Host "Checking if there is a 7-Zip.tmp file left from an old execution of this script." -ForegroundColor Yellow
    if (Test-Path $var7ztmp) {
        Write-Host "Older 7-Zip.tmp found, deleting it." -ForegroundColor Yellow
        Remove-Item -Path $var7ztmp -Recurse -Force -EA SilentlyContinue | Out-Null
        Write-Host "Older 7-Zip.tmp found deleted." -ForegroundColor Green
        Write-Host ""
    }
    Else {
        Write-Host "Old 7-Zip.tmp not found." -ForegroundColor Green
        Write-Host ""
    }

    Start-Sleep -Milliseconds 100

    Write-Host "Creating the 7-Zip archive." -ForegroundColor Yellow
    7z a $var7z $varBackupFolder\* -myx=9 -mx=9 -r -sdel
    Write-Host "Done." -ForegroundColor Green
    Write-Host ""

    Start-Sleep -Milliseconds 100

    Write-Host "Deleting the backup folder."  -ForegroundColor Yellow
    Remove-Item -Path $varBackupFolder -Recurse -Force -EA SilentlyContinue | Out-Null
    Write-Host "Backup folder removed." -ForegroundColor Green
    Write-Host ""
    Write-Host "Done, the backup archive was completed successfully." -ForegroundColor Green
    Write-Host "Backup was created here -> " $var7z -ForegroundColor Green
}
Else {
    Write-Host "Operation cancelled for the following reason :"
    Write-Host """User Data"" folder not found, check if Google Chrome is installed inside the following path : C:\Users\>Your Username<\AppData\Googlel\Chrome\ ."
}

Write-Host ""
Read-Host "Press enter to keep rollin' "