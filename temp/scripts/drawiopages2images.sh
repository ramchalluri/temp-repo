#!/bin/bash

function show_help {
	__usage="
Exports all drawio pages [diagrams] into specified formated output image files. The output files will have "sanitized" diagram names
For this script to work, [draw.io](https://get.diagrams.net/) app needs to have been installed and added to the PATH variable.

Usage: drawiopages2images [options...] diagram_filename

Options:
  -t, --type <output type>       Enter Output file name type possible options are png | svg | jpg | pdf 
  -o, --outpath <output folder>  provide a output folder name where you want the generated files to be stored. 
  -p, --print                    print the drawio command instead of executing it. This way you can only print a particular page instead of every page. 
  -h, --help                     Show this help details.
"; 
echo "$__usage"
}

function convert_diagram_xml() {
    local infile=$1
    local outpath=$2

    draw.io --export --format xml --output ${outpath}/${infile}.xml --page-index 0 ${outpath}/${infile}.drawio
}

function check_type() {
    local input="$1"
    local acceptable_types=("svg" "png" "pdf")

    # Loop through the acceptable words and check if input matches
    for type in "${acceptable_types[@]}"; do
        if [[ "$input" == "$type" ]]; then
            return 0
        fi
    done
    echo "$input is not an acceptable diagram type to export, exiting out of the process."
    echo "Acceptable types are ${acceptable_types[@]}"
    cleanup "$output_folder_path" "xml"
    exit 1
} 

function cleanup() {
    local outpath=$1
    local fileextension=$2
    echo "Deleting all the files with ${fileextension} extension in ${outpath} folder"
    rm $outpath/*.${fileextension}   
}

function convert_diagram() {
    local infile=$1
    local type=$2
    local file_type=$2
    local outpath=$3

    echo "Exporting all diagrams from the file $infile.drawio to type: $type and storing in outpath: $outpath"

    if [[ "$file_type" == "svg" ]]; then
        echo "First converting to PDF for a good SVG output"
        type="pdf"
    fi

    export g_infile=$infile
    export g_type=$type
    export g_outpath=$outpath
    
    cat $outpath/$infile.xml \
        | grep -Eo "name=\"[^\"]*" \
        | cut -c7- \
        | sed -e 's/[^a-zA-Z0-9_]/_/g' \
        | tr '[:upper:]' '[:lower:]' \
        | awk '{print NR,$1}' \
        | xargs -n2 sh -c \
        'draw.io --crop --export --format $g_type --output ${g_outpath}/$1.${g_type} --page-index $(expr $0 - 1) ${g_outpath}/${g_infile}.drawio'
 
    if [[ "$file_type" == "svg" ]]; then
      echo "Now converting all the PDFs to SVG files using the tool inkscape."
      convert_pdf_svg "$infile" "$output"
      cleanup "$output_folder_path" "pdf"
    fi
}

convert_pdf_svg() {
  for file in *.pdf
  do
    inkscape "$file" --pdf-poppler --export-text-to-path --export-plain-svg --export-filename "${file%.pdf}.svg"
  done
}

function check_and_remove_extension() {
    local filename="$1"
    local modified="${filename%.drawio}"
    echo $modified
}

function assign_default_value() {
    local input_var="$1"
    local default_value="$2"

    # If the input variable is empty, assign the default value
    if [[ -z "$input_var" ]]; then
        input_var="$default_value"
    fi

    # Return the value (either input or default)
    echo "$input_var"
}

# Default values for variables
diagram_type=""
print_flag="false"
output_folder_path=""
input_filename=""
POSITIONAL_ARGS=()

PRINT="FALSE"

while [[ $# -gt 0 ]]; do
  case $1 in
    -t|--type)
      diagram_type="$2"
      shift 2 # past argument, value
      ;;
    -o|--outpath)
      output_folder_path="$2"
      shift 2 # past argument, value
      ;;
    -h|--help)
      show_help;
      exit 0;
      ;;
    -p|--print)
      print_flag=true
      shift # past argument
      ;;
    -*|--*)
      echo "Unknown option $1"
      exit 1
      ;;
    *)
      if [[ -z "$input_filename" ]]; then
          input_filename="$1"
          shift
      else
          echo "Error: Multiple input files provided. Only one input file is allowed."
          exit 1
      fi
      ;;    
  esac
done

# Check if the input file name has Drawio extension or not and add if it does not have it.
echo "filename: $input_filename"

input_filename=$(check_and_remove_extension "$input_filename")
echo "filename: $input_filename"

# Check if the Output folder path is specified. If not add a default vaule of "./"
output_folder_path=$(assign_default_value "$output_folder_path" "./")

convert_diagram_xml "$input_filename" "$output_folder_path"

# check the output diagram type to see if 1 or more types are needed.
if [[ "${diagram_type}" == *","* ]]; then
  # Split the input into an array using the comma as a delimiter
  IFS=',' read -r -a _diagram_type_array <<< "$diagram_type"

  # Print each element of the array
  for type in "${_diagram_type_array[@]}"; do
    check_type $type
    convert_diagram "$input_filename" "$type" "$output_folder_path"
  done
else
    check_type $diagram_type
    convert_diagram "$input_filename" "$diagram_type" "$output_folder_path"
fi

cleanup "$output_folder_path" "xml"
