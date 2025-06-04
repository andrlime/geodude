from geodude.core.file_reader import read_file
from geodude.core.config import AppConfig

def dump_typst(content: str, target: str = "./main.typ"):
    main_template_content = read_file(AppConfig().get_config_variable("core_template"))
    content_to_write_to_file = main_template_content + "\n\n\n" + content
    content_to_write_to_file += read_file(AppConfig().get_config_variable("skills_template"))

    with open(target, "w") as f:
        f.write(content_to_write_to_file)
    
    print(f"Wrote LLM generated resume to {target}. Please manually shorten and reorder.")
