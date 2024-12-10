# app.py

import streamlit as st

# Title of the app
st.title("My Extreme Super Streamlit App")

# Description
st.write("This is a simple Streamlit app to demonstrate its features.")

# Slider widget
number = st.slider("Select a number", 0, 100, 50)  # Slider from 0 to 100 with default value 50
st.write(f"You selected: {number}")

# Button widget
if st.button("Click me!"):
    st.write("Button clicked!")

# Display a chart
import numpy as np
import pandas as pd

data = pd.DataFrame(
    np.random.randn(10, 2),
    columns=["x", "y"]
)

st.line_chart(data)

