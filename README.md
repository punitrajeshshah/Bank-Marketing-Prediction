# 📊 Optimising Marketing Strategies: Predicting Client Response in Bank Campaigns  

## 📌 Project Overview  
This project analyzes a **bank's telemarketing campaign** to predict whether clients will subscribe to a term deposit. Using **machine learning models**, we identify key customer attributes influencing responses, helping banks improve marketing strategies.    

## 📁 Repository Structure  
```
Bank-Marketing-Prediction/
│── README.md                # Project Overview  
│── LICENSE                  # GNU GPL v3 License  
│── .gitignore               # Ignore unnecessary files  
│  
├── data/  
│   └── bank-additional-full.csv  # Dataset 
│
├── notebooks/  
│   └── Optimising_Marketing_Strategies.docx   # R Markdown docx version of the script
│
├── src/  
│   └── Optimising_Marketing_Strategies.R  # Main R script  
│  
├── reports/  
│   └── Bank-Marketing-Prediction.docx  # Final Report  

```

## 📊 Models Implemented  
- ✅ Decision Tree  
- ✅ Logistic Regression  
- ✅ Random Forest  

## 💾 Dataset  
- **Source:** [UCI Machine Learning Repository](https://archive.ics.uci.edu/ml/datasets/Bank+Marketing)  
- **Records:** 41,188 bank clients  
- **Features:** 21 attributes (age, job, education, etc.)  

## 🚀 Results  
- 🏆 **Best Model:** Random Forest (92.17% Accuracy)  
- 📌 **Key Predictors of Client Response:**  
  - `duration` (call length)  
  - `euribor3m` (economic indicator)  
  - `nr.employed` (employment rate)  
  - `age`  
  - `job`  

## 🛠️ How to Run  
### 1️⃣ **Requirements:**  
- R 4.2.0 or above  
- RStudio (recommended)  

### 2️⃣ **Install Dependencies:**  
```r

source('src/Optimising_Marketing_Strategies.R')

```

### 3️⃣ Run Analysis:
```sh

source('src/MA2405_GROUP_PROJECT.R')

```

📈 Key Visualizations
- 📊 Feature Importance from Random Forest
- 🌲 Decision Tree Visual Representation
- 📈 Confusion Matrices Comparing Model Performance
