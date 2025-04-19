# Akash_AI_ML_Notes

## Project Structure

This repository is structured to help you navigate and utilize the notes effectively. Below is the recommended structure:

```
Akash_AI_ML_Notes/
├── 1_SQL/                            # Learn about basic SQL Queries
├── 2_DATA SCIENCE LIBRARIES          # Learn about the libraries required for Data Science
├── 3_Maths_for_DS_AIML               # Learn about basic Maths and statistics for DS and AIML
├── 4_Machine Learning(ML)            # Learn about ML algorithsm & training ML models
└── README.md                         # Project overview and instructions
```


## About `uv`

The `uv` package manager is a Python ecosystem tool similar to `npm` in the JavaScript ecosystem. It allows you to manage dependencies, scripts, and configurations for your projects efficiently. If you're familiar with `npm`, you'll find `uv` intuitive and powerful for managing AI/ML  or Python based projects.

**Steps to setup your system environment to use these notes optimally:**

- Install Python from the official docs: [Docs](https://www.python.org/downloads/)
- Install uv using pip:
    ```bash
    pip install uv  # For windows
    
    pip3 install uv # For Mac/Linux
    ```
- Install the requirements using uv from the requirements.txt:

    ```bash
    uv add -r requirements.txt
    ```

- If you need to add any dependency for your learning locally on your system, use these commands:
    ```bash
    uv add <pkg_name> # Install package using uv
    uv pip freeze > requirements.txt  # Freeze your dependencies to used on any system
    ```