# Test the following:
# If the CUDA is installed
# If the python verrsion meet the inital requirements

# Check if CUDA is installed
echo "Checking if CUDA is installed"
if ! command -v nvcc &> /dev/null
then
    echo "CUDA is not installed"
    echo "Please install CUDA and try again"
    exit
fi

# Check if python version is correct
echo "Checking if python version is correct"
if ! python3 -c "import sys; assert sys.version_info == (3, 8)"
then
    echo "Python version is not correct"
    echo "Please install python 3.8 and try again"
    exit
fi