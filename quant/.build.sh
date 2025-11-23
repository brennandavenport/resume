# Variables
PDF_NAME="Davenport_Brennan_Resume"
BIN_DIR=".bin"

case "$1" in
  build)
    echo "Building resume project..."
    mkdir -p "$BIN_DIR"
    rm -f "$PDF_NAME".pdf
    pdflatex -output-directory="$BIN_DIR" "$PDF_NAME".tex
    mv "$BIN_DIR/$PDF_NAME".pdf ./
    ;;
  clean)
    echo "Cleaning resume project..."
    rm -rf "$BIN_DIR"
    rm -f "$PDF_NAME".pdf
    ;;
  *)
    echo "Usage: .build.sh [build|clean]"
    exit 1
    ;;
esac