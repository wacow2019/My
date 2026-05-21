# 定義專案名稱（預設為 Project，也可執行時修改）
Write-Host "V1.1"
$projectName = "NewProject"
if (-not (Test-Path $projectName)) { New-Item -ItemType Directory -Path $projectName }
cd $projectName

# 定義要建立的資料夾清單
$folders = @(
    "●完成圖面",
    "A-施工圖",
    "B-預算書",
    "C-文件檔",
    "D-室內設計",
    "E-設備廠商",
    "F-材料材質",
    "G-圖面製作",
    "H-簡報ppt",
    "I-現況照片"
)

# 批次建立資料夾
foreach ($folder in $folders) {
    if (-not (Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder
        Write-Host "已建立: $folder" -ForegroundColor Green
    } else {
        Write-Host "跳過: $folder (已存在)" -ForegroundColor Yellow
    }
}

Write-Host "`n專案初始化完成！" -ForegroundColor Cyan

