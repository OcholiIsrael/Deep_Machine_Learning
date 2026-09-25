# 🌍 Spatio-Temporal Forecasting of Urban Expansion & Microclimate (UHI) using Hybrid Deep Learning

[![Python](https://img.shields.io/badge/Python-3.8%2B-blue.svg)](https://www.python.org/)
[![TensorFlow](https://img.shields.io/badge/TensorFlow-2.x-orange.svg)](https://www.tensorflow.org/)
[![Google Earth Engine](https://img.shields.io/badge/Google%20Earth%20Engine-API-green.svg)](https://earthengine.google.com/)

## 📌 Project Overview
This repository contains the code and methodology for analyzing and forecasting urban sprawl and Urban Heat Island (UHI) intensification in Enugu Metropolis, Nigeria (2000–2045). 

Traditional remote sensing relies on static thresholding, which often fails during sensor transitions and struggles to balance sharp land-cover boundaries with fluid thermodynamic heat gradients. This project solves this imbalance by deploying a **Custom Hybrid Dual-Head ConvLSTM Deep Learning Architecture**. The model successfully maps historical physical expansion and thermal stress, and predicts future spatial trajectories under business-as-usual scenarios up to 2045.

## 🚀 Key Features & Innovations
* **Multi-Sensor Harmonization:** Automated Google Earth Engine (GEE) pipelines to ingest, cloud-mask, and harmonize Landsat (5/7/8) and Sentinel-2 imagery into 16-band macro-aware tensors.
* **Dual-Head Neural Network Architecture:** A shared Convolutional Neural Network (CNN) feature extractor that branches into two specialized pathways:
  * **Head A (LULC):** Categorical spatial classification (Softmax, Sparse Categorical Cross-Entropy) to map strict physical boundaries.
  * **Head B (UHI):** Continuous thermodynamic regression (Linear, Mean Squared Error) to map fluid thermal anomalies (Z-scores) before post-processing.
* **Spatio-Temporal Forecasting:** Integration of ConvLSTM and Markovian transition matrices to iteratively simulate future urban footprints and thermal hotspots up to 2045.
* **Automated Data Engineering:** End-to-end Python scripts using `rasterio`, `numpy`, and `python-docx` to extract geographic tensors, evaluate model metrics, and automatically generate publication-ready Word document tables and high-resolution matplotlib charts.

## 📊 Model Performance (2024 Validation)
The dual-head architecture effectively eliminated the multi-task learning imbalance that plagues conventional classifiers:
* **LULC Spatial Prediction Core:** 87.12% Overall Accuracy (Kappa: 0.7006)
* **UHI Thermodynamic Regression Core:** 0.7734 R² (72.64% OA after thresholding)

## 🛠️ Tech Stack
* **Geospatial Processing:** Google Earth Engine (GEE) Python API, Rasterio, GDAL
* **Deep Learning / AI:** TensorFlow, Keras, NumPy
* **Data Visualization & Automation:** Matplotlib, Pandas, python-docx

## 📁 Repository Structure
* `/scripts_gee/` - Google Earth Engine JavaScript/Python code for multi-sensor extraction and compositing.
* `/notebooks/` - Jupyter notebooks containing the data pre-processing, CNN-LSTM model training, and validation loops.
* `/automation/` - Python scripts for exporting evaluation metrics, confusion matrices, and predictive accuracy directly to MS Word (`.docx`) and generating Matplotlib graphs.
* *(Note: Massive 16-band GeoTIFFs and trained `.h5` weights are excluded from this repo via `.gitignore` to comply with GitHub data limits).*

## 💡 Use Cases & Applications
This pipeline is directly applicable to:
* **ESG & Climate Risk Consulting:** Assessing the vulnerability of real estate portfolios to future microclimate thermal stress.
* **Smart City Planning:** Providing municipal governments with AI-driven, data-backed zoning forecasts to mitigate uncontrolled peri-urban sprawl.
* **Agricultural Buffer Monitoring:** Tracking the conversion rate of vital ecological greenbelts into impervious concrete surfaces.

---
*Created by [Israel Ocholi](https://github.com/OcholiIsrael) | MSc Geoinformatics & Surveying*