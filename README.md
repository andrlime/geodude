# Geodude: A resume generating LLM dude

This repository contains a modular LLM agent designed to process structured resume data into typographically precise, role-specific resume components. It supports per-section prompts and dynamic content formatting for highly customized outputs in [Typst](https://typst.app), ideal for technical applications (e.g., Quant Trading, Quant Dev, Big Tech SWE).

## 🧠 Overview

The agent reads from a configurable list of templates, each corresponding to a resume section such as:

- Education
- Experience
- Projects
- Skills
- Publications (optional)

Each template contains:
- A `folder`: path to input data (YAML or structured files)
- A `prompt`: prompt file (Markdown or plain text) used to generate output from each item in the folder

Configure folders in `config.yml`. Change `main_template.typ` and `skills_template.typ` with static headers and footers. Look in `./example` for an example. Sections can be customised and prompt engineered as desired.

The LLM sucks at optimising for length. You do that by hand once it writes fine-tuned bullets for a provided job description.

The entry point is `main.py` as a CLI. Run the program with no arguments or `--help` to read the documentation.

