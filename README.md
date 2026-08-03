# AI-Powered Counterfeit Product Verification System Using Blockchain

A complete enterprise-grade Final Year Project that detects counterfeit products using **Artificial Intelligence** and **Blockchain** technology.

## Features

- **Blockchain Product Registration** — Register products on Polygon/Hardhat with immutable records
- **QR Code Verification** — Generate and scan QR codes for instant authenticity checks
- **Supply Chain Tracking** — Transfer ownership from manufacturer → distributor → retailer → customer
- **AI Counterfeit Detection** — CNN model analyzes product images for authenticity
- **Admin Dashboard** — Analytics, charts, and system monitoring
- **MetaMask Integration** — Wallet connection, network switching, transaction signing
- **Role-Based Access** — Manufacturer, distributor, retailer, customer, admin roles

## Tech Stack

| Layer | Technologies |
|-------|-------------|
| Frontend | React 18, Vite, Tailwind CSS, Ethers.js v6, Framer Motion |
| Backend | Python, Flask, Flask-JWT-Extended, Flask-CORS |
| Blockchain | Solidity, Hardhat, OpenZeppelin, Polygon Amoy |
| AI | TensorFlow, Keras, OpenCV, Scikit-learn |
| Database | MongoDB |

## Project Structure

```
counterfeit-product-verification/
├── frontend/          # React + Vite application
├── backend/           # Flask REST API
├── blockchain/        # Solidity smart contracts + Hardhat
├── ai-model/          # CNN training and model files
├── docs/              # Documentation
└── README.md
```

## Quick Start

### Prerequisites

- Node.js 18+
- Python 3.10+ (Python 3.10–3.11 recommended for TensorFlow AI model)
- MongoDB 6+
- MetaMask browser extension

### 1. Blockchain Setup

```bash
cd blockchain
npm install
npm run compile
npm run node          # Terminal 1: Start local Hardhat node
npm run deploy:local  # Terminal 2: Deploy contract
```

### 2. AI Model Setup

```bash
cd ai-model
pip install -r requirements.txt
python generate_model.py   # Creates sample dataset and trains model
```

### 3. Backend Setup

```bash
cd backend
pip install -r requirements.txt
cp .env.example .env
python seed.py             # Seed demo users
python app.py              # Start Flask server on port 5000
```

### 4. Frontend Setup

```bash
cd frontend
npm install
cp .env.example .env
npm run dev                # Start on http://localhost:5173
```

## Demo Accounts

| Email | Password | Role |
|-------|----------|------|
| admin@verichain.com | admin123 | Admin |
| manufacturer@verichain.com | mfg123 | Manufacturer |
| customer@verichain.com | cust123 | Customer |
| distributor@verichain.com | dist123 | Distributor |

## MetaMask Setup (Local)

1. Add Hardhat network: RPC `http://127.0.0.1:8545`, Chain ID `31337`
2. Import test account using Hardhat's default private key
3. Connect wallet in the app

## API Endpoints

| Method | Endpoint | Description |
|--------|----------|-------------|
| POST | `/api/register` | Register user |
| POST | `/api/login` | Login user |
| GET | `/api/products` | List products |
| POST | `/api/products` | Register product |
| GET | `/api/product/:id` | Get product |
| POST | `/api/predict` | AI image prediction |
| POST | `/api/upload` | Upload image |
| GET | `/api/history/:id` | Ownership history |
| GET | `/api/dashboard` | Dashboard stats |
| GET | `/api/analytics` | Analytics data |

## Product Flow

```
Manufacturer Login → Register Product → Blockchain TX → QR Code
    → Transfer Ownership → Distributor → Retailer → Customer
    → Scan QR → Blockchain Verify → Upload Image → AI Analysis → Result
```

## Documentation

- [Installation Guide](docs/INSTALLATION.md)
- [Deployment Guide](docs/DEPLOYMENT.md)
- [Testing Guide](docs/TESTING.md)
- [API Documentation](docs/API.md)

## License

MIT License — Final Year Project 2026
