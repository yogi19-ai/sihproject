# Bhu-Sushasan: National Digital Platform for Land Governance (SIH26019)

> **Department of Land Resources (DoLR) • Smart India Hackathon 2026**  
> An integrated, evidence-based digital platform for cadastral mapping (14-digit ULPIN), statutory legal grounding (>0.85 evaluation score), spatial what-if policy simulation, and tamper-evident SHA-256 governance audit trails.

---

## 🚀 Quick Start: How to Run the Platform

### Method 1: One-Click Windows Launcher (Recommended)
Simply double-click the included batch launcher file in the root directory:
```powershell
.\run_all.bat
```
This automatically starts:
1. **Python AI & Geospatial Microservice** on `http://localhost:8000`
2. **Core Land Governance API Server** on `http://localhost:5000`
3. **Vite Cadastral WebGIS Frontend** on `http://localhost:5173`
4. Automatically opens **http://localhost:5173** in your default web browser.

---

### Method 2: Manual Step-by-Step Terminal Execution

Open **three separate terminal/PowerShell windows**:

#### Window 1: Start the Python AI Microservice (Port 8000)
```powershell
cd "c:\yogesh\project sih\ai_service"
python app.py
```
*Note: Uses Python standard library (`http.server`, `re`, `json`, `math`). No external pip packages needed.*  
Endpoint: `http://localhost:8000/api/ai/health`

#### Window 2: Start the Core Backend API (Port 5000)
```powershell
cd "c:\yogesh\project sih\backend"
node server.js
```
Endpoint: `http://localhost:5000` (Documentation at `/api/health`)

#### Window 3: Start the Vite Frontend (Port 5173)
```powershell
cd "c:\yogesh\project sih\frontend"
npm run dev
```
Open **`http://localhost:5173`** in your browser.

---

## 🧪 Running Automated Test Suite

To run the automated verification test suite verifying ULPIN compliance, SHA-256 cryptographic chaining, 3-tier RBAC policies, and LARR 2013 formulas:

```powershell
cd "c:\yogesh\project sih\backend"
npm test
```
*Expected Result: 14 Passed, 0 Failed.*

---

## 🔑 Pre-Configured Demo User Personas

You can instantly switch personas via the **Active Persona** selector in the top header:

| Role | Name & Designation | Email | Password | Primary Permissions |
|---|---|---|---|---|
| **Administrator** | Dr. Rajeshwar Sharma, IAS (Land Commissioner) | `admin@landgov.gov.in` | `Admin@SIH2026!` | Full supervisory access, field verifications, dataset ingestion, SHA-256 audit ledger inspection |
| **Researcher** | Prof. Ananya Sen (Senior Geospatial Fellow) | `researcher@landgov.gov.in` | `Research@2026!` | Run spectral analytics (NDVI/NDWI), create What-If scenarios, draft decision dossiers |
| **Viewer** | Kavita Deshmukh (Citizen / Agronomist) | `citizen@landgov.gov.in` | `Citizen@2026!` | Public cadastral parcel lookup, statutory legal search, public challenges (sensitive data masked) |

---

## 🏛️ Platform Architecture & Modules

```
project sih/
├── frontend/                # React 18 + Vite Cadastral WebGIS Interface
│   ├── src/components/      # Sidebar, Top Header, Navigation components
│   ├── src/pages/           # 10 Dedicated Governance Modules
│   │   ├── Overview.jsx     # National KPIs, LULC breakdown, real-time activity stream
│   │   ├── WebGIS.jsx       # 14-digit ULPIN vector map, filters, 1,000+ parcel benchmark
│   │   ├── Records.jsx      # Federated dataset catalog & ISO-7064 ULPIN syntax engine
│   │   ├── LegalSearch.jsx  # Hybrid BM25 RAG engine with >0.85 grounding verification
│   │   ├── GeoAnalytics.jsx # Sentinel-2 multispectral NDVI/NDWI calculator & LULC matrix
│   │   ├── Simulator.jsx    # CA-Markov urban transition & LARR 2013 financial formula
│   │   ├── InnovationHub.jsx# Pilot policy challenges, proposals & sandbox reviews
│   │   ├── Dossiers.jsx     # Cabinet briefings, statutory matrices & CSV exports
│   │   ├── AuditLogs.jsx    # SHA-256 cryptographic chain verification explorer
│   │   └── AdminHealth.jsx  # Subsystem telemetry & Three-Tier RBAC framework
│   ├── src/services/api.js  # Unified REST API service connector
│   └── src/styles/index.css # Responsive Indian public sector design system
│
├── backend/                 # Node.js Express Core API (Port 5000)
│   ├── src/controllers/     # REST controllers for all 10 governance domains
│   ├── src/services/        # SHA-256 audit logger, ULPIN validator, JWT auth
│   ├── src/data/            # Seed data & JSON-backed high-performance spatial store
│   └── tests/               # 14-point test suite for SIH compliance
│
├── ai_service/              # Python 3.11 Geospatial & AI Microservice (Port 8000)
│   └── app.py               # CA-Markov simulation, spectral indices & grounding score
│
└── database/
    └── schema.sql           # PostgreSQL 16 + PostGIS + pgvector production schema
```

---

## 🛡️ Statutory Compliance & Standards Met
- **ULPIN / Bhu-Aadhaar Standard**: 14-digit alphanumeric code format compliance.
- **Statutory Legal Grounding**: >0.85 evaluation score verification with legal citations for LARR 2013, Forest Rights Act 2006, and Wetlands Conservation Rules 2017.
- **Cryptographic Audit Ledger**: Block-by-block SHA-256 chaining guaranteeing zero unauthorized mutations.
- **LARR 2013 First Schedule**: Rural multiplier (1.0x to 2.0x) + mandatory 100% solatium computation.
