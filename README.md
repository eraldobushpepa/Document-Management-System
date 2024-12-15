# Document-Management-System

This is what I came with as a system approach to organize personal files/documents, ordered by year and categories.

## Structure Overview

```plaintext
/[YEAR]/                # Current year documents
    │
    ├── 01 - Personal/         # Personal documents and correspondence
    │   ├── 01 - Identity
    │   ├── 02 - Contracts
    │   └── 03 - Correspondence
    │
    ├── 02 - Finance/         # Financial records and transactions
    │   ├── 01 - Bank Statements
    │   ├── 02 - Investments
    │   ├── 03 - Bills & Utilities
    │   ├── 04 - Tax Documents
    │   └── 05 - Receipts
    │
    ├── 03 - Health/          # Health-related documents
    │   ├── 01 - Medical Records
    │   ├── 02 - Prescriptions
    │   ├── 03 - Test Results
    │   └── 04 - Insurance
    │
    ├── 04 - Education/       # Educational materials and records
    │   ├── 01 - Courses
    │   ├── 02 - Certificates
    │   ├── 03 - Projects
    │   ├── 04 - Research
    │   └── 05 - University
    │       ├── Assignments
    │       ├── Notes
    │       └── Projects
    │
    ├── 05 - Documents/       # Administrative and legal documents
    │   ├── 01 - Legal
    │   ├── 02 - Administrative
    │   └── 03 - Templates
    │
    ├── 06 - Projects/        # Project-related files
    │   ├── 01 - Active
    │   ├── 02 - Completed
    │   └── 03 - Archive
    │
    └── 07 - Planning/        # Goals and planning documents
        ├── 01 - Goals
        ├── 02 - Reviews
        └── 03 - Tracking

/STATIC/                # Permanent reference materials
    │
    ├── 01 - Books/           # Book collections
    │   ├── 01 - Technical
    │   ├── 02 - Academic
    │   └── 03 - Personal Development
    │
    ├── 02 - Music/           # Music files and playlists
    │   ├── 01 - Collections
    │   └── 02 - Playlists
    │
    ├── 03 - Photos/          # Photo collections
    │   ├── 01 - Events
    │   ├── 02 - Personal
    │   └── 03 - Projects
    │
    ├── 04 - Knowledge Base/  # Learning resources and references
    │   ├── 01 - Programming
    │   │   ├── Languages
    │   │   ├── Frameworks
    │   │   ├── Tools
    │   │   └── Resources
    │   │
    │   ├── 02 - Research
    │   │   ├── Academic Papers
    │   │   ├── Data Sets
    │   │   └── Methods
    │   │
    │   ├── 03 - Documentation
    │   │   ├── Technical Guides
    │   │   ├── Personal Notes
    │   │   └── Workflows
    │   │
    │   ├── 04 - References
    │   │   ├── Templates
    │   │   ├── Cheat Sheets
    │   │   └── Best Practices
    │   │
    │   └── 05 - Analytics
    │       ├── Templates
    │       ├── Dashboards
    │       └── Data Sources
    │
    └── 05 - Business/        # Business resources
        ├── 01 - Resources
        ├── 02 - Documentation
        └── 03 - Planning

```

## Quick Start

1. Download the .ps1 file
2. Navigate to your desired directory
3. Right-click, open with powershell
4. Run the script:

If you want to change the structure

1. Change file from .ps1 to .txt
2. Change the name of categories or whatever you want
3. Save it, re-change it to .ps1
4. Right-click, open with powershell

```powershell
create_folders.ps1
```

## Document Classification Guide

### When to use [YEAR] folders:
- Documents tied to a specific date
- Annual records
- Current projects
- Temporary documents

### When to use STATIC folders:
- Reference materials
- Templates
- Learning resources
- Long-term knowledge base

## Decision Tree for Filing

### 1. Time-Sensitive Documents ([YEAR])
- **Personal Documents** → `01 - Personal/`
  - IDs, passports → `01 - Identity/`
  - Contracts → `02 - Contracts/`
  - Correspondence → `03 - Correspondence/`

- **Financial Documents** → `02 - Finance/`
  - Bank statements → `01 - Bank Statements/`
  - Investment docs → `02 - Investments/`
  - Bills/fines → `03 - Bills & Utilities/`
  - Tax documents → `04 - Tax Documents/`
  - Receipts → `05 - Receipts/`

- **Health Documents** → `03 - Health/`
  - Visit records → `01 - Medical Records/`
  - Prescriptions → `02 - Prescriptions/`
  - Test results → `03 - Test Results/`
  - Insurance → `04 - Insurance/`

### 2. Reference Materials (STATIC)
- **Knowledge Base** → `04 - Knowledge Base/`
  - Programming resources → `01 - Programming/`
  - Research papers → `02 - Research/`
  - Documentation → `03 - Documentation/`
  - Quick references → `04 - References/`
  - Analytics → `05 - Analytics/`

## Maintenance Tips

### File Naming Convention
Since I'm European, I'll use this date type
```plaintext
DD-MM-YYYY_Category_Description
Example: 15-01-2025_Invoice_InternetBill.pdf
```

## Setup Script

The PowerShell script (`create_folders.ps1`) will create the entire folder structure automatically. You can find it in this repository.

## Contributing

Feel free to suggest improvements or share your customizations through issues or pull requests.

## License

MIT License - feel free to modify and use this structure for your needs.
