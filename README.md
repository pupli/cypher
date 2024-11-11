# Zed Extension for Cypher

This Zed extension provides syntax highlighting support for the Cypher query language, using the `tree-sitter-cypher` parser.

Refer to the official Zed documentation for language extensions at [https://zed.dev/docs/extensions/languages](https://zed.dev/docs/extensions/languages).

## Steps to Set Up the Zed Extension

### Step 1: Create the Extension

1. Create a new directory for your Zed extension (e.g., `cypher`):
   ```bash
   mkdir cypher
   cd cypher
  ```
  
2. Create the extension.toml File

Inside the cypher directory, create a file named extension.toml with the basic info and following content:
   
   ```bash
[grammars.cypher]
repository = "https://github.com/pupli/tree-sitter-cypher"
commit = "COMMITID"  # Replace COMMITID with the actual commit ID you want to use
  ```

3. Configure the Language in config.toml

Inside a language/cypher directory, create a config.toml file with basic configuration settings for the Cypher extension.

4. Define Syntax Highlighting Rules

Inside the language/cypher directory, create a file named highlights.scm and define the rules for syntax highlighting. These rules will specify how different Cypher elements (like keywords, functions, and operators) are highlighted.

### Step 2: Load as a "Dev Extension"

Go to Zed and install the extension as a developer extension:

1. Open **Zed**.
2. Go to **Extensions** in the menu.
3. Click **Install Dev Extension**.

The extension should appear in the Extensions list (as shown in the image above) once loaded successfully.

### Step 6: Test the Extension

1. Create a new file with a `.cypher` extension in Zed.
2. Add Cypher syntax, such as examples from the [cypher.txt test cases](https://github.com/opencypher/openCypher/blob/master/tools/grammar/src/test/resources/cypher.txt) in the openCypher project, to verify that syntax highlighting works as expected.

