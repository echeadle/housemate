#!/bin/bash

# Project config
PROJECT_NAME="housemate"
AUTHOR_NAME="Your Name"  # <-- Replace with your name or GitHub username
YEAR=$(date +"%Y")

# Create folder structure
mkdir -p $PROJECT_NAME/{app/{agent,data,db,logic,ui},examples,scripts}

# Navigate into project
cd $PROJECT_NAME || exit 1

# Create standard files
touch README.md requirements.txt .gitignore

# App files
touch app/main.py
touch app/agent/assistant.py
touch app/data/tasks.db
touch app/db/database.py
touch app/logic/task_utils.py
touch app/ui/layout.py

# Example and script
touch examples/sample_tasks.md
touch scripts/export_tasks.py

# .gitignore content
cat <<EOF > .gitignore
*.pyc
__pycache__/
.env
tasks.db
*.sqlite3
*.md
*.csv
EOF

# requirements.txt
cat <<EOF > requirements.txt
langchain
streamlit
sqlite-utils
pandas
markdown2
openai
python-dotenv
EOF

# LICENSE (MIT)
cat <<EOF > LICENSE
MIT License

Copyright (c) $YEAR $AUTHOR_NAME

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell      
copies of the Software, and to permit persons to whom the Software is          
furnished to do so, subject to the following conditions:                       

The above copyright notice and this permission notice shall be included in all 
copies or substantial portions of the Software.                                

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR     
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,       
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE    
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER         
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,  
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE  
SOFTWARE.
EOF

# Initialize Git repository
git init
git add .
git commit -m "Initial commit: project scaffold with MIT license"

# Completion message
echo -e "\n✅ Project structure created with MIT LICENSE."
echo "👉 To push to GitHub:"
echo "1. Create a GitHub repo named '$PROJECT_NAME'"
echo "2. Run:"
echo "   git remote add origin https://github.com/YOUR_USERNAME/$PROJECT_NAME.git"
echo "   git branch -M main"
echo "   git push -u origin main"

