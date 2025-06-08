import os

def read_content(input_path):
    try:
        with open(input_path, 'r', encoding='utf-8') as f:
            content = f.read()
        return content
    except Exception as e:
        print(f"Error processing file {input_path}: {e}")
        return None

def merge_content_from_different_files(folder_path, output_path):
    for filename in os.listdir(folder_path):
        if filename.endswith(".py"):
            input_path = os.path.join(folder_path, filename)
            content = read_content(input_path)
            if content is not None:
                with open(output_path, 'a', encoding='utf-8') as f:
                    f.write(f"\n# {filename.split('.')[:-1]} CODE\n")
                    f.write(content)

def main():
    folder="matrix_multiplication"
    folder_path = f'./modified_scripts/python/{folder}'
    output_path = f'./modified_scripts/python/merged_scripts/merged_{folder}.py'
    merge_content_from_different_files(folder_path, output_path)

if __name__ == "__main__":
    main()
