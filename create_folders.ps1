# Get current year
$year = Get-Date -Format "yyyy"

$folders = @(
    # Year-based folders
    "$basePath/[YEAR]/01 - Personal/01 - Identity",
    "$basePath/[YEAR]/01 - Personal/02 - Contracts",
    "$basePath/[YEAR]/01 - Personal/03 - Correspondence",
    "$basePath/[YEAR]/02 - Finance/01 - Bank Statements",
    "$basePath/[YEAR]/02 - Finance/02 - Investments",
    "$basePath/[YEAR]/02 - Finance/03 - Bills & Utilities",
    "$basePath/[YEAR]/02 - Finance/04 - Tax Documents",
    "$basePath/[YEAR]/02 - Finance/05 - Receipts",
    "$basePath/[YEAR]/03 - Health/01 - Medical Records",
    "$basePath/[YEAR]/03 - Health/02 - Prescriptions",
    "$basePath/[YEAR]/03 - Health/03 - Test Results",
    "$basePath/[YEAR]/04 - Education/01 - Courses",
    "$basePath/[YEAR]/04 - Education/02 - Certificates",
    "$basePath/[YEAR]/04 - Education/03 - Projects",
    "$basePath/[YEAR]/04 - Education/04 - Research",
    "$basePath/[YEAR]/04 - Education/05 - University",
    "$basePath/[YEAR]/05 - Documents/01 - Legal",
    "$basePath/[YEAR]/05 - Documents/02 - Administrative",
    "$basePath/[YEAR]/05 - Documents/03 - Templates",
    "$basePath/[YEAR]/06 - Projects/01 - Active",
    "$basePath/[YEAR]/06 - Projects/02 - Completed",
    "$basePath/[YEAR]/06 - Projects/03 - Archive",
    "$basePath/[YEAR]/07 - Planning/01 - Goals",
    "$basePath/[YEAR]/07 - Planning/02 - Reviews",
    "$basePath/[YEAR]/07 - Planning/03 - Tracking",

    # Expanded STATIC section
    "$basePath/STATIC/01 - Books/01 - Technical",
    "$basePath/STATIC/01 - Books/02 - Academic",
    "$basePath/STATIC/01 - Books/03 - Personal Development",
    "$basePath/STATIC/01 - Books/04 - Business",

    "$basePath/STATIC/02 - Music/01 - Collections",
    "$basePath/STATIC/02 - Music/02 - Playlists",
    "$basePath/STATIC/02 - Music/03 - Production",

    "$basePath/STATIC/03 - Photos/01 - Events",
    "$basePath/STATIC/03 - Photos/02 - Personal",
    "$basePath/STATIC/03 - Photos/03 - Projects",
    "$basePath/STATIC/03 - Photos/04 - Archive",

    "$basePath/STATIC/04 - Knowledge Base/01 - Programming",
        "$basePath/STATIC/04 - Knowledge Base/01 - Programming/Languages",
        "$basePath/STATIC/04 - Knowledge Base/01 - Programming/Frameworks",
        "$basePath/STATIC/04 - Knowledge Base/01 - Programming/Tools",
        "$basePath/STATIC/04 - Knowledge Base/01 - Programming/Resources",
    
    "$basePath/STATIC/04 - Knowledge Base/02 - Research",
        "$basePath/STATIC/04 - Knowledge Base/02 - Research/Academic Papers",
        "$basePath/STATIC/04 - Knowledge Base/02 - Research/Data Sets",
        "$basePath/STATIC/04 - Knowledge Base/02 - Research/Methods",
    
    "$basePath/STATIC/04 - Knowledge Base/03 - Documentation",
        "$basePath/STATIC/04 - Knowledge Base/03 - Documentation/Technical Guides",
        "$basePath/STATIC/04 - Knowledge Base/03 - Documentation/Personal Notes",
        "$basePath/STATIC/04 - Knowledge Base/03 - Documentation/Workflows",
    
    "$basePath/STATIC/04 - Knowledge Base/04 - References",
        "$basePath/STATIC/04 - Knowledge Base/04 - References/Templates",
        "$basePath/STATIC/04 - Knowledge Base/04 - References/Cheat Sheets",
        "$basePath/STATIC/04 - Knowledge Base/04 - References/Best Practices",

    "$basePath/STATIC/05 - Business/01 - Resources",
        "$basePath/STATIC/05 - Business/01 - Resources/Templates",
        "$basePath/STATIC/05 - Business/01 - Resources/Brand Assets",
        "$basePath/STATIC/05 - Business/01 - Resources/Marketing Materials",
    
    "$basePath/STATIC/05 - Business/02 - Documentation",
        "$basePath/STATIC/05 - Business/02 - Documentation/Processes",
        "$basePath/STATIC/05 - Business/02 - Documentation/Manuals",
        "$basePath/STATIC/05 - Business/02 - Documentation/Guidelines",
    
    "$basePath/STATIC/05 - Business/03 - Planning",
        "$basePath/STATIC/05 - Business/03 - Planning/Business Plans",
        "$basePath/STATIC/05 - Business/03 - Planning/Strategies",
        "$basePath/STATIC/05 - Business/03 - Planning/Market Research"
)

# Create all folders at once
foreach ($folder in $folders) {
    $folder = $folder.Replace("[YEAR]", $year)  # Replace [YEAR] with current year
    if (!(Test-Path $folder)) {
        New-Item -ItemType Directory -Path $folder -Force
        Write-Host "Created: $folder"
    }
    else {
        Write-Host "Already exists: $folder"
    }
}

Write-Host "`nFolder structure creation completed at: $basePath"