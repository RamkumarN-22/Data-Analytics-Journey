# 📋 Insights Report: House Price Prediction

---

## 🔍 Dataset Summary

The housing dataset contains over 20,000 records, each describing a home with features like bedrooms, bathrooms, square footage, location, and price. Our goal was to predict **`price`** using these features with a linear regression model.

---

## 📊 EDA Observations

- ✅ No missing or null values were found.
- 📉 Outliers were detected in features like:
  - `sqft_lot`, `price`, `sqft_living`, `sqft_basement`, `grade`, etc.
- 📌 Strong correlations were found between `price` and:
  - `sqft_living`, `bathrooms`, `grade`, `sqft_above`
- Used a correlation heatmap to validate feature relevance.

---

## 🔧 Modeling Overview

- Selected 14 most relevant features based on correlation and domain understanding.
- Applied `LinearRegression()` from `sklearn`.
- 80/20 train-test split for evaluation.
- Focused on predicting price for a wide range of houses using numeric features only.

---

## 📈 Model Performance

| Metric        | Value (Approximate) |
|---------------|---------------------|
| **R² Score**  | 0.70 – 0.75         |
| **MSE**       | Large due to price scale, but acceptable |

- The model captured general trends well.
- Minor underprediction for very high-priced homes.

---

## 🧠 Key Takeaways

- Linear regression is a good **baseline model** for this problem.
- More advanced models (e.g., **Random Forest, XGBoost**) could improve accuracy.
- Outliers are natural in real estate — we retained them to preserve authenticity.
- Latitude/Longitude clustering and feature transformation (e.g., log-scale) are recommended for future enhancement.

---

## 🚀 Next Steps

- Try **Polynomial Regression** or **Ridge/Lasso Regression** for regularization.
- Encode location via clustering or one-hot for better geographic modeling.
- Build a **Streamlit app** to let users input house features and predict prices live.

---

## 📂 Project Artifacts
House_Price_Prediction/
├── housing.csv
├── House_Price_Prediction.ipynb
├── README.md
└── Insights_Report.md

--

## ✍️ Author

**RamKumar N**\
*Aspiring Data Analyst | Python | SQL | Machine Learning*

