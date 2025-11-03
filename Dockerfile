FROM python:3.10-slim

WORKDIR /app
COPY app.py /app/

# ✅ Install Streamlit
RUN pip install streamlit

# ✅ Expose port for Streamlit
EXPOSE 8501

# ✅ Run Streamlit app
CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.address=0.0.0.0"]
