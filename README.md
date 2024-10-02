# Time Series Analysis Tutorial - SYNASC 2024

Welcome to the **Time Series Analysis Tutorial** repository, presented by **Carlos Cano Domingo** at **SYNASC 2024**. This tutorial delves into advanced methodologies for analyzing time series data, including preprocessing, deep learning, event detection, and variable prediction. The tutorial's focus spans both traditional statistical models and cutting-edge deep learning techniques, offering participants practical insights into time series forecasting.

## Overview

The materials in this repository include the following resources:
- A comprehensive presentation in PDF format, summarizing key concepts and methodologies.
- A Jupyter Notebook, featuring hands-on exercises in Python with PyTorch Lightning.
- An R Markdown file for time series analysis using statistical methods and visualization in R.

We extend special thanks to **SYNASC** for hosting the tutorial and providing a platform for exchanging knowledge on advanced computational techniques.

## Repository Structure

### 1. Presentation
- **File:** [TimeSeriesTutorial_SYNASC.pdf](./TimeSeriesTutorial_SYNASC.pdf)
- This PDF presentation covers the theoretical background and key concepts for time series analysis, ranging from traditional statistical techniques (ARIMA, Exponential Smoothing) to modern machine learning models (LSTM, Transformers).
- **Topics covered:**
  - Time series fundamentals
  - Challenges in time series forecasting (e.g., autocorrelation, multicollinearity, heteroscedasticity, stationarity)
  - Practical examples of forecasting using R and Python
  - Deep learning approaches, including PyTorch Lightning, LSTM, and Transformers

### 2. Jupyter Notebook (Python)
- **File:** [TimeSeriesTutorial_SYNASC.ipynb](./TimeSeriesTutorial_SYNASC.ipynb)
- This notebook provides step-by-step instructions for implementing time series forecasting models using Python and PyTorch Lightning. It includes:
  - Data loading and preprocessing for time series
  - Implementing Long Short-Term Memory (LSTM) networks for time series forecasting
  - Using autoencoders for anomaly detection and dimensionality reduction
  - Hyperparameter tuning with MLFlow and RayTune

### 3. R Markdown (R)
- **File:** [TimeSeriesTutorial_SYNASC.Rmd](./TimeSeriesTutorial_SYNASC.Rmd)
- This R Markdown file is a guide to applying statistical models to time series data. The file includes examples of:
  - Classical forecasting methods (ARIMA, Exponential Smoothing)
  - Data visualization and preprocessing in R
  - Model validation and evaluation metrics
  - Visualization of time series trends, seasonality, and residuals
  - Application of machine learning models for predictive analysis

### 4. R Script for Data Loading
- **File:** [loading_data.R](./loading_data.R)
- A simple R script for loading and preparing the time series data. It is intended to be used alongside the R Markdown and Jupyter notebook files.

## Key Concepts and Models

This tutorial emphasizes the following key concepts and models:

- **Time Series Basics:** Understanding time series data, temporal ordering, and the importance of regular intervals. Concepts like trend, seasonality, cyclical patterns, and noise are discussed in depth.
- **Challenges in Time Series:** Special focus on common issues such as:
  - Autocorrelation: Dealing with correlated time points
  - Multicollinearity: Managing highly correlated variables
  - Heteroscedasticity: Handling non-constant variance
  - Stationarity: Working with non-stationary data
- **Deep Learning for Time Series:**
  - **LSTM (Long Short-Term Memory):** Capturing long-range dependencies in time series data.
  - **Transformers:** An advanced model for handling large datasets and capturing both short-term and long-term dependencies.
- **Autoencoder Models:** Dimensionality reduction, segmentation, and anomaly detection for time series data.
- **Hyperparameter Optimization:** Using tools like MLFlow and RayTune to fine-tune models for better performance.

## Installation and Usage

### Python (Jupyter Notebook)
1. **Clone the repository:**
   ```bash
   git clone https://github.com/YourUsername/TimeSeriesTutorial.git
