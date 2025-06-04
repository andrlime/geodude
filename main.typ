#import "template.typ": *
#set page(margin: (x: 24pt, y: 30pt), columns: 1)
#set page("a4")
#set par(justify: true)

#profile(
    "Andrew Li",
    "andrewli2048",
    "andrlime",
    "(206) 756-7799",
    "andrewli@u.northwestern.edu",
    "andrewli2048@gmail.com"
)



#section("Education")
#school(
  "Northwestern University",
  (
    ("Masters of Science", "Computer Science", "Expected March 2027"),
    ("Bachelors of Arts", "Computer Science and Integrated Sciences, Minor in Chemistry", "Expected June 2026"),
  ),
  "Evanston, Illinois, United States of America"
)

#tags(
  "Coursework",
  (
    strong("Honors Probability and Stochastic Processes"),
    strong("Fourier and Complex Analysis"),
    strong("Accelerated Linear Algebra"),
    strong("Algorithms"),
    "Operating Systems",
    "Distributed Systems",
    "Networking Systems",
    "Database Systems",
    "Programming Languages",
    "Scalable Software Architectures",
    "Machine Learning",
  )
)


#section("Experience")
#job(
    "Capital One",
    (
        (
            "Software Engineer Intern",
            "June 2024 — August 2024",
            "McLean, VA",
            (
                text("Authored scalable " + strong("Python") + " utility to extract, normalize, and aggregate " + strong("Docker") + " container metadata across distributed " + strong("AWS ECS") + " clusters for reproducible dependency analysis."),
            )
        ),
    )
)#job(
    "Northwestern Wildhacks",
    (
        (
            "Director of Technology",
            "May 2023 — Present",
            "Evanston, IL",
            (
                text("No relevant quantitative trading, signal modeling, or market-driven research in role scope."),
            )
        ),
    )
)
#job(
    "Capital One",
    (
        (
            "Software Engineer Intern",
            "June 2025 — August 2025",
            "Chicago, IL",
            (
                text("Developed high-throughput data generation engine using " + strong("Go") + " primitives to automate large-scale randomized testing of multi-format structured data for core credit card systems."),
                text("Parallelized schema parsing and data output pipelines leveraging " + strong("Go concurrency") + " to maximize throughput for fuzz and integration test regimes."),
            )
        ),
    )
)#job(
    "Northwestern University",
    (
        (
            "Undergraduate Teaching Assistant",
            "September 2023 — Present",
            "Evanston, IL",
            (
                text("Led tutorials and support sessions on " + strong("C/C++ systems programming") + ", including bitwise data compression, x86 assembly, and buffer overflow concepts."),
                text("Guided students through implementation of recursive descent " + strong("Python interpreter and debugger") + " in " + strong("C/C++") + ", focusing on memory management and tokenization."),
                text("Advised parallel programming assignments using " + strong("OpenMP") + ", " + strong("MPI") + ", and map-reduce primitives for multithreaded and distributed computation."),
            )
        ),
    )
)#job(
    "Northwestern University Fintech Club",
    (
        (
            "Core Software Developer",
            "October 2023 — Present",
            "Evanston, IL",
            (
                text("Built modular high-frequency trading simulation platform using " + strong("C++") + ", " + strong("Python") + ", and " + strong("Rust") + ", enabling rapid end-to-end market event research."),
                text("Engineered stochastic event generator in " + strong("C++") + " producing synthetic tick-level prices via configurable " + strong("Brownian motion") + " and volatility regimes."),
                text("Integrated real-time tick stream pipeline using " + strong("Boost IPC") + " for feeding simulated data into signal wrappers and trading strategy sandboxes."),
                text("Designed signal analytics suite in " + strong("Python") + " with " + strong("Polars") + " for efficient orderbook feature extraction, supporting large-scale backtesting of momentum and mean-reversion signals."),
                text("Implemented performance metrics and replay modules for Northwestern Trading Competition: PnL curve, execution latency, and stress testing under adverse market states."),
            )
        ),
    )
)


#section("Projects")
#project(
    "Debate Judge App",
    "National High School Debate League of China",
    (
        text("Engineered end-to-end tournament automation platform using " + strong("Python, Rust, Flask, MongoDB, AWS") + " to manage debate events for 2500+ students each semester."),
    )
)#project(
    "OCaml LLM-Powered Text Game Compiler",
    "",
    (
        text("Built compiler in " + strong("OCaml") + " translating Markdown scripts into stateful " + strong("React") + " components with LLM-driven logic; generated IR for prompt flows and dynamic state transitions."),
    )
)#project(
    "OCaml CSV-to-TypeScript Content Compiler",
    "",
    (
        text("Built " + strong("OCaml") + " DSL compiler to parse typed CSV and generate statically typed " + strong("TypeScript") + " modules; enforced schema validity with type inference, enabled build-time content pipelines."),
    )
)#project(
    "ESP-300 Python Interface",
    "Gaynor Group, Northwestern University",
    (
        text("Engineered " + strong("Python") + " hardware abstraction layer for RS-232 control of legacy ESP-300 translation stage, enabling reproducible automation and streamlined lab experiment workflows."),
    )
)


#section("Skills")
#tags(
    "Technical",
    (
        strong("C/C++"),
        strong("Python"),
        strong("OCaml"),
        strong("Pytorch"),
        strong("Docker"),
        strong("Git"),
        "Golang",
        "Java",
        "SQL",
        "x86 Assembly",
        "JavaScript/TypeScript",
        "ReactJS",
        "Flask"
    )
)
#tags(
    "Tools",
    (
        strong("(Neo)vim"),
        "Unix",
        "GDB",
        "Valgrind",
        "Pandas/Polars",
        "Jenkins",
        "GitHub CI/CD",
        "AWS",
        "Firebase",
        "MongoDB",
        "Postgres",
        "Bash",
        "RPC",
        "CMake"
    )
)
#tags(
    "Miscellaneous",
    (
        "Adobe Creative Suite (Illustrator, InDesign, Photoshop, Lightroom)",
        "Mandarin Chinese",
        "Large Language Models / LLMs",
    )
)
