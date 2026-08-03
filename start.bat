@echo off
echo ============================================
echo  VeriChain - Counterfeit Product Verification
echo ============================================
echo.
echo Starting all services...
echo.
echo [1/4] Make sure MongoDB is running on port 27017
echo [2/4] Starting Hardhat node...
start "Hardhat Node" /D "%~dp0blockchain" cmd /k "npx hardhat node"
timeout /t 5 /nobreak >nul
echo [3/4] Deploying smart contract...
cd /d "%~dp0blockchain"
call npm run deploy:local
echo [4/4] Starting Backend and Frontend...
start "Flask Backend" /D "%~dp0backend" cmd /k "python app.py"
start "React Frontend" /D "%~dp0frontend" cmd /k "npm run dev"
echo.
echo ============================================
echo  All services starting!
echo  Frontend: http://localhost:5173
echo  Backend:  http://localhost:5000
echo  Hardhat:  http://127.0.0.1:8545
echo ============================================
pause
