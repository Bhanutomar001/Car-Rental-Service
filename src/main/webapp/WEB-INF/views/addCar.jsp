<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Registration - Host</title>
    <!-- Google Fonts & Font Awesome Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Inter', sans-serif;
        }

        body {
            background: #f0f4f8;
            min-height: 100vh;
            padding: 40px 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .form-card {
            background: #ffffff;
            width: 100%;
            max-width: 820px;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(15, 23, 42, 0.08);
            border: 1px solid #e2e8f0;
            overflow: hidden;
        }

        .card-header {
            background: linear-gradient(135deg, #0f172a 0%, #1e293b 100%);
            color: #ffffff;
            padding: 32px 30px;
            text-align: center;
            position: relative;
        }

        .card-header h2 {
            font-size: 24px;
            font-weight: 700;
            letter-spacing: -0.5px;
        }

        .card-header p {
            font-size: 14px;
            color: #94a3b8;
            margin-top: 6px;
        }

        .form-body {
            padding: 35px 40px;
        }

        .section-header {
            display: flex;
            align-items: center;
            gap: 10px;
            font-size: 15px;
            font-weight: 600;
            color: #2563eb;
            margin-bottom: 20px;
            margin-top: 10px;
            padding-bottom: 8px;
            border-bottom: 1.5px solid #eff6ff;
        }

        .section-header i {
            font-size: 16px;
        }

        .grid-2 {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 20px;
        }

        .grid-3 {
            display: grid;
            grid-template-columns: 1fr 1fr 1fr;
            gap: 18px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        label {
            display: block;
            font-size: 13px;
            font-weight: 600;
            color: #334155;
            margin-bottom: 8px;
        }

        .input-wrapper {
            position: relative;
            display: flex;
            align-items: center;
        }

        .input-wrapper i {
            position: absolute;
            left: 14px;
            color: #94a3b8;
            font-size: 14px;
            transition: color 0.2s ease;
        }

        input[type="text"],
        input[type="number"],
        input[type="date"],
        input[type="email"],
        select {
            width: 100%;
            padding: 12px 14px 12px 40px;
            border: 1.5px solid #cbd5e1;
            border-radius: 10px;
            font-size: 14px;
            color: #0f172a;
            background-color: #f8fafc;
            transition: all 0.2s ease-in-out;
        }

        select {
            appearance: none;
            cursor: pointer;
        }

        input:focus, select:focus {
            border-color: #2563eb;
            background-color: #ffffff;
            box-shadow: 0 0 0 4px rgba(37, 99, 235, 0.1);
            outline: none;
        }

        .input-wrapper input:focus + i,
        .input-wrapper select:focus + i {
            color: #2563eb;
        }

        .btn-submit {
            width: 100%;
            background: #2563eb;
            color: #ffffff;
            padding: 15px;
            border: none;
            border-radius: 10px;
            font-size: 15px;
            font-weight: 600;
            cursor: pointer;
            box-shadow: 0 4px 12px rgba(37, 99, 235, 0.25);
            transition: all 0.2s ease;
            margin-top: 10px;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 8px;
        }

        .btn-submit:hover {
            background: #1d4ed8;
            transform: translateY(-1px);
            box-shadow: 0 6px 16px rgba(37, 99, 235, 0.35);
        }

        .btn-submit:active {
            transform: translateY(0);
        }

        @media (max-width: 640px) {
            .grid-2, .grid-3 {
                grid-template-columns: 1fr;
            }
            .form-body {
                padding: 25px 20px;
            }
        }
    </style>
</head>
<body>

<div class="form-card">
    <div class="card-header">
        <h2>Register Your Vehicle</h2>
        <p>Complete the vehicle and driver details to proceed</p>
    </div>

    <form action="carReg" method="post" class="form-body">

        <div class="section-header">
            <i class="fa-solid fa-car"></i> Basic Details
        </div>

        <div class="grid-3">
            <div class="form-group">
                <label for="carBrand">Car Brand</label>
                <div class="input-wrapper">
                    <input type="text" id="carBrand" name="carBrand" placeholder="e.g. Hyundai, Maruti" required>
                    <i class="fa-solid fa-industry"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="modelName">Model Name</label>
                <div class="input-wrapper">
                    <input type="text" id="modelName" name="modelName" placeholder="e.g. Creta, Swift" required>
                    <i class="fa-solid fa-car-side"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="email">User Email</label>
                <div class="input-wrapper">
                    <input type="email" id="email" name="email" placeholder="user@example.com" required>
                    <i class="fa-solid fa-envelope"></i>
                </div>
            </div>
        </div>

        <div class="grid-3">
            <div class="form-group">
                <label for="vehicleType">Vehicle Type</label>
                <div class="input-wrapper">
                    <select id="vehicleType" name="vehicleType" required>
                        <option value="">Select Type</option>
                        <option value="Hatchback">Hatchback</option>
                        <option value="Sedan">Sedan</option>
                        <option value="SUV">SUV</option>
                        <option value="MUV">MUV</option>
                    </select>
                    <i class="fa-solid fa-list"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="manufacturingYear">Year</label>
                <div class="input-wrapper">
                    <input type="number" id="manufacturingYear" name="manufacturingYear" placeholder="2022" min="2000" max="2026" required>
                    <i class="fa-solid fa-calendar"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="colour">Colour</label>
                <div class="input-wrapper">
                    <input type="text" id="colour" name="colour" placeholder="e.g. White" required>
                    <i class="fa-solid fa-palette"></i>
                </div>
            </div>
        </div>

        <div class="section-header">
            <i class="fa-solid fa-sliders"></i> Technical Details
        </div>

        <div class="grid-2">
            <div class="form-group">
                <label for="fuelType">Fuel Type</label>
                <div class="input-wrapper">
                    <select id="fuelType" name="fuelType" required>
                        <option value="">Select Fuel</option>
                        <option value="Petrol">Petrol</option>
                        <option value="Diesel">Diesel</option>
                        <option value="EV">Electric (EV)</option>
                        <option value="CNG">CNG</option>
                    </select>
                    <i class="fa-solid fa-gas-pump"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="transmissionType">Transmission</label>
                <div class="input-wrapper">
                    <select id="transmissionType" name="transmissionType" required>
                        <option value="">Select Transmission</option>
                        <option value="Manual">Manual</option>
                        <option value="Automatic">Automatic</option>
                    </select>
                    <i class="fa-solid fa-gear"></i>
                </div>
            </div>
        </div>

        <div class="grid-2">
            <div class="form-group">
                <label for="seatingCapacity">Seating Capacity</label>
                <div class="input-wrapper">
                    <input type="number" id="seatingCapacity" name="seatingCapacity" placeholder="e.g. 5" min="2" max="10" required>
                    <i class="fa-solid fa-chair"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="mileage">Mileage</label>
                <div class="input-wrapper">
                    <input type="text" id="mileage" name="mileage" placeholder="e.g. 18 kmpl" required>
                    <i class="fa-solid fa-gauge-high"></i>
                </div>
            </div>
        </div>

        <div class="section-header">
            <i class="fa-solid fa-file-contract"></i> Legal & Registration Details
        </div>

        <div class="grid-3">
            <div class="form-group">
                <label for="numberPlate">Number Plate</label>
                <div class="input-wrapper">
                    <input type="text" id="numberPlate" name="numberPlate" placeholder="MP09AB1234" required>
                    <i class="fa-solid fa-rectangle-list"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="insuranceDate">Insurance Expiry</label>
                <div class="input-wrapper">
                    <input type="date" id="insuranceDate" name="insuranceDate" required>
                    <i class="fa-solid fa-calendar-check"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="rcNumber">RC Number</label>
                <div class="input-wrapper">
                    <input type="text" id="rcNumber" name="rcNumber" placeholder="Enter RC Number" required>
                    <i class="fa-solid fa-id-card"></i>
                </div>
            </div>
        </div>

        <div class="section-header">
            <i class="fa-solid fa-user-gear"></i> Driver Details
        </div>

        <div class="grid-3">
            <div class="form-group">
                <label for="driverName">Driver Name</label>
                <div class="input-wrapper">
                    <input type="text" id="driverName" name="driverName" placeholder="Enter Full Name" required>
                    <i class="fa-solid fa-user"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="driverNumber">Mobile Number</label>
                <div class="input-wrapper">
                    <input type="text" id="driverNumber" name="driverNumber" placeholder="10 Digit Number" pattern="[0-9]{10}" maxlength="10" required>
                    <i class="fa-solid fa-phone"></i>
                </div>
            </div>

            <div class="form-group">
                <label for="driverAadhaar">Aadhaar Number</label>
                <div class="input-wrapper">
                    <input type="text" id="driverAadhaar" name="driverAadhaar" placeholder="12 Digit Number" pattern="[0-9]{12}" maxlength="12" required>
                    <i class="fa-solid fa-address-card"></i>
                </div>
            </div>
        </div>

        <button type="submit" class="btn-submit">
            <span>Register Car</span>
            <i class="fa-solid fa-arrow-right"></i>
        </button>

    </form>
</div>

</body>
</html>