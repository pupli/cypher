# Zed Extension for Cypher

This Zed extension provides syntax highlighting support for the Cypher query language, using the `tree-sitter-cypher` parser.

Refer to the official Zed documentation for language extensions at [https://zed.dev/docs/extensions/languages](https://zed.dev/docs/extensions/languages).

## Steps to Set Up the Zed Extension

## Step 1: Create the Extension

### 1. Create a new directory for your Zed extension (e.g., `cypher`):

### 2. Create the extension.toml File

Inside the cypher directory, create a file named extension.toml with the basic info and following content:
   
   ```bash
[grammars.cypher]
repository = "https://github.com/pupli/tree-sitter-cypher"
commit = "COMMITID"  # Replace COMMITID with the actual commit ID you want to use
  ```

### 3. Configure the Language in config.toml

Inside a language/cypher directory, create a config.toml file with basic configuration settings for the Cypher extension.


### 4. Define Syntax Highlighting Rules

Inside the language/cypher directory, create a file named highlights.scm and define the rules for syntax highlighting. These rules will specify how different Cypher elements (like keywords, functions, and operators) are highlighted.

## Step 2: Load as a "Dev Extension"

Go to Zed and install the extension as a developer extension:

1. Donwload the extension (https://github.com/pupli/cypher/archive/refs/tags/latest.zip) and extract  
2. Open **Zed**.
3. Go to **Extensions** in the menu.
4. Click **Install Dev Extension** and point to extracted folder

The extension should appear in the Extensions list (as shown in the image above) once loaded successfully.

## Step 3: Test the Extension

1. Create a new file with a `.cypher` extension in Zed.
2. Add Cypher syntax, such as examples from the [cypher.txt test cases](https://github.com/opencypher/openCypher/blob/master/tools/grammar/src/test/resources/cypher.txt) in the openCypher project, to verify that syntax highlighting works as expected.

## References and Acknowledgments

Many thanks to the following resources for guidance and support in creating this extension:

1. [Installing Extensions in Zed](https://zed.dev/docs/extensions/installing-extensions) - Guide to setting up and installing extensions in Zed.
2. [Zed Decoded: Extensions Blog Post](https://zed.dev/blog/zed-decoded-extensions) - Insights on how Zed handles extensions and the possibilities they open.
3. [openCypher GitHub Repository](https://github.com/opencypher) - Provides tools and libraries for working with the Cypher query language.
4. [openCypher Resources](https://opencypher.org/resources/) - Reference materials on Cypher syntax, language style, and best practices.
5. [Cypher Test Cases](https://github.com/opencypher/openCypher/blob/master/tools/grammar/src/test/resources/cypher.txt) - Useful Cypher syntax examples for testing and validation.
6. [Extension Structure Inspiration](https://github.com/taekwombo) - Thank you to the repository for guidance on structuring the extension files and configurations.


