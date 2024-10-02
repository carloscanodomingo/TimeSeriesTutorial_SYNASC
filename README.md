# 📊 Time Series Analysis Tutorial - SYNASC 2024

Welcome to the **Time Series Analysis Tutorial** repository, presented by **Carlos Cano Domingo** at **SYNASC 2024**. This repository includes all materials used during the tutorial, which covers advanced methodologies for analyzing time series data, including preprocessing, deep learning, event detection, and variable prediction. The tutorial focuses on both traditional statistical models and cutting-edge deep learning techniques, offering practical insights into time series forecasting.

---

## 📚 Overview

This repository contains the following resources:
- 📑 **Presentation (PDF)** summarizing key concepts and methodologies.
- 📝 **Jupyter Notebook** with hands-on exercises using Python and PyTorch Lightning.
- 🖥️ **R Markdown file** for time series analysis using statistical methods and data visualization in R.
- 📊 **Data files** and **videos** demonstrating practical implementation.

Special thanks to **SYNASC 2024** for hosting the tutorial and providing a platform to share advanced computational techniques.

---

## 📂 Repository Structure

### 1. 📑 Presentation
- **File:** [TimeSeriesTutorial_SYNASC.pdf](./TimeSeriesTutorial_SYNASC.pdf)
- This PDF covers the theoretical background and key concepts for time series analysis, including:
  - Time series fundamentals (trend, seasonality, noise)
  - Challenges in time series forecasting (autocorrelation, multicollinearity, heteroscedasticity, stationarity)
  - Practical forecasting examples using R and Python
  - Advanced deep learning models like LSTM and Transformers

---

### 2. 📝 Jupyter Notebook (Python)
- **File:** [TimeSeriesTutorial_SYNASC.ipynb](./TimeSeriesTutorial_SYNASC.ipynb)
- This notebook provides a practical guide for implementing time series forecasting models using PyTorch Lightning. It includes:
  - Data loading and preprocessing for time series
  - LSTM network implementation for forecasting
  - Autoencoders for dimensionality reduction and anomaly detection
  - Hyperparameter optimization using MLFlow and RayTune

---

### 3. 📊 R Markdown (R)
- **File:** [TimeSeriesTutorial_SYNASC.Rmd](./TimeSeriesTutorial_SYNASC.Rmd)
- The R Markdown file demonstrates time series analysis using statistical methods in R, covering:
  - Classical forecasting models (ARIMA, Exponential Smoothing)
  - Data preprocessing and visualization techniques
  - Model validation and evaluation metrics

---

### 4. 🖥️ R Script for Data Loading
- **File:** [loading_data.R](./loading_data.R)
- A simple script to load and preprocess the time series data for use in the R and Python exercises.

---

### 5. 🎥 Videos
- **Folder:** `video/`
---

## 🛠️ Key Concepts and Models

This tutorial emphasizes the following key concepts and models:

- **📈 Time Series Fundamentals:** Understanding the importance of temporal ordering, trends, seasonality, and noise in time series data.
- **🔑 Common Challenges:** Tackling issues like:
  - Autocorrelation: Managing correlated time points
  - Multicollinearity: Handling highly correlated variables
  - Heteroscedasticity: Dealing with non-constant variance
  - Stationarity: Ensuring reliable results with non-stationary data
- **🤖 Deep Learning for Time Series:**
  - **LSTM (Long Short-Term Memory):** Capturing long-term dependencies in time series.
  - **Transformers:** Effectively handling large datasets and capturing both short-term and long-term patterns.
- **⚙️ Autoencoders:** Techniques for anomaly detection and dimensionality reduction in time series.
- **🎯 Hyperparameter Optimization:** Using MLFlow and RayTune for tuning deep learning models.

---

## 🧑‍💻 Installation and Usage

### Python (Jupyter Notebook)
1. **Clone the repository:**
   ```bash
   git clone https://github.com/YourUsername/TimeSeriesTutorial.git
