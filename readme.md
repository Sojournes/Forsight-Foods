# Foresight Foods: AI‑Powered Kitchen

A Streamlit application that leverages Google’s Gemini AI to forecast food demand, minimize waste, and incorporate a feedback loop for continuous model improvement. Ideal for cafeterias, catering services, and restaurants looking to optimize preparation and reduce costs.

---

## 🔍 Project Overview

- **Dashboard**  
  Real‑time metrics on consumption, waste, and predicted demand, plus 7‑day trend charts.
- **Demand Forecaster**  
  Upload historical sales, event schedules, weather, and local‑event data—get a 24‑hour demand forecast, itemized when possible.
- **Waste Minimizer**  
  Feed in predicted demand, past consumption/waste/stock data, and menu ingredients—receive an optimized prep plan in JSON, plus waste‑reduction tips.
- **Feedback Loop**  
  Submit predicted vs. actual usage per menu item to retrain or refine prompts over time.

---

## 🚀 Features

- **Gemini AI Integration**  
  Uses `google.generativeai` client to call Gemini‑1.5‑Flash for natural‑language forecasting and reporting.
- **Dynamic Input Forms**  
  JSON/text upload widgets and free‑form text fields for flexible data ingestion.
- **Metrics & Charts**  
  Streamlit `st.metric`, `st.bar_chart`, and `st.line_chart` for at‑a‑glance insights.
- **Dockerized**  
  Includes `Dockerfile` for containerized deployments.

---

## 🛠 Prerequisites

- Python 3.9+
- [Streamlit](https://streamlit.io/)
- A valid Gemini AI API key (see below)
- Docker & Docker Compose (optional, for containerized deployment)

---

## 📦 Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/your‑org/foresight‑foods.git
   cd foresight‑foods
   ```

````

2. **Create & activate a virtual environment**

   ```bash
   python3 -m venv .venv
   source .venv/bin/activate   # Linux/macOS
   .venv\Scripts\activate      # Windows
   ```

3. **Install dependencies**

   ```bash
   pip install --upgrade pip
   pip install -r requirements.txt
   ```

4. **Configure your Gemini API key**

   * **Option A**: Set an environment variable

     ```bash
     export GEMINI_API_KEY="your_api_key_here"    # Linux/macOS
     set GEMINI_API_KEY="your_api_key_here"       # Windows
     ```
   * **Option B**: Store in `~/.streamlit/secrets.toml`

     ```toml
     [general]
     GEMINI_API_KEY = "your_api_key_here"
     ```

---

## ▶️ Running Locally

```bash
streamlit run app.py
```

* The app will spin up at **[http://localhost:8501/](http://localhost:8501/)**
* Use the sidebar to navigate between **Dashboard**, **Demand Forecaster**, **Waste Minimizer**, and **Feedback Loop**.

---

## 🐳 Docker Deployment

1. **Build the Docker image**

   ```bash
   docker build -t foresight‑foods:latest .
   ```

2. **Run the container**

   ```bash
   docker run -d \
     -p 8501:8501 \
     --name foresight‑foods \
     foresight‑foods:latest
   ```

3. **Access the app**
   Navigate to **[http://localhost:8501/](http://localhost:8501/)**

---

## 📁 Project Structure

```
├── app.py
├── Dockerfile
├── requirements.txt
└── README.md
```

* **app.py** – Entry point, sidebar routing & API‑key setup.
* **Dockerfile** – Containerization instructions.
* **requirements.txt** – Python dependencies.

---
````
