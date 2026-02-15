# LaTeX Presentation Project

A well-organized Beamer presentation project with modular sections.

## Project Structure

```
latex_presentation/
├── main.tex                    # Main presentation file
├── sections/                   # Individual section files
│   ├── introduction.tex        # Introduction section
│   ├── methodology.tex         # Methodology section
│   ├── results.tex             # Results section
│   └── conclusion.tex          # Conclusion section
├── images/                     # Directory for images/figures
├── build/                      # Build artifacts (aux, log files)
├── compile.sh                  # Compilation script
└── README.md                   # This file
```

## How to Compile

### Option 1: Using the compilation script (Recommended)
```bash
./compile.sh
```

### Option 2: Manual compilation
```bash
# Run pdflatex twice for proper references
pdflatex main.tex
pdflatex main.tex
```

### Option 3: With output directory
```bash
pdflatex -output-directory=build main.tex
pdflatex -output-directory=build main.tex
```

### Option 4: Using latexmk (if available)
```bash
latexmk -pdf main.tex
```

## Editing the Presentation

1. **Edit metadata**: Open `main.tex` and update title, author, institution
2. **Edit sections**: Modify files in the `sections/` directory
3. **Add images**: Place images in `images/` directory and reference them:
   ```latex
   \includegraphics[width=0.8\textwidth]{images/yourimage.png}
   ```
4. **Add new sections**: Create new `.tex` files in `sections/` and include them in `main.tex`:
   ```latex
   \input{sections/newsection.tex}
   ```

## Tips

- Run compilation twice to resolve all references and table of contents
- Check `build/main.log` for errors if compilation fails
- Use `\input{}` to include section files (already configured)
- Customize theme in `main.tex` by changing `\usetheme{Madrid}`

## Available Themes

Some popular Beamer themes:
- Madrid, Berlin, Copenhagen, Warsaw (with navigation bars)
- Singapore, Boadilla, CambridgeUS (minimal)
- AnnArbor, Berkeley, Goettingen (with sidebars)

## Troubleshooting

- **Missing packages**: Install with `sudo yum install texlive-<package>`
- **Compilation errors**: Check the `.log` file in the build directory
- **Images not showing**: Ensure image path is correct and file exists

## Quick Compilation Commands

```bash
# From project root
cd latex_presentation

# Quick compile
./compile.sh

# Or manual
pdflatex main.tex && pdflatex main.tex

# View PDF (if you have a viewer)
evince presentation.pdf   # Linux
open presentation.pdf     # macOS
```
