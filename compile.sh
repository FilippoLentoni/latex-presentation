#!/bin/bash

# LaTeX Presentation Compilation Script

echo "Compiling LaTeX presentation..."
echo "================================"

# Clean previous builds (optional)
# rm -f *.aux *.log *.nav *.out *.snm *.toc *.pdf

# First pass - generate basic PDF
echo "First pass..."
pdflatex -interaction=nonstopmode -output-directory=build main.tex

# Second pass - resolve references and TOC
echo "Second pass..."
pdflatex -interaction=nonstopmode -output-directory=build main.tex

# Move PDF to root directory
if [ -f "build/main.pdf" ]; then
    mv build/main.pdf ./presentation.pdf
    echo "================================"
    echo "✓ Compilation successful!"
    echo "✓ PDF generated: presentation.pdf"
    echo "================================"

    # Show PDF info
    ls -lh presentation.pdf
else
    echo "================================"
    echo "✗ Compilation failed!"
    echo "Check build/main.log for errors"
    echo "================================"
    exit 1
fi
