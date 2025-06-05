/* configure for your own needs */
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
    "Evanston, IL"
)

#tags(
    "Coursework",
    (
        strong("Operating Systems"),
        strong("Distributed Systems"),
        strong("Database Systems"),
        strong("Networking"),
        strong("Scalable Software Architecture (AWS)"),
        "Algorithms",
        "Programming Languages",
        "Linear Algebra",
        "Honors Probability",
        "Fourier & Complex Analysis",
    )
)


#section("Experience")
#job(
    "Capital One",
    (
        (
            "Software Engineer Intern",
            "June 2025 — August 2025",
            "Chicago, IL",
            (
                text("Shipped high-throughput, schema-driven test data generator using " + strong("Go") + " and " + strong("Angular") + "; enabled nested schemas and multi-format outputs for scalable fuzz and integration testing."),
            )
        ),
        (
            "Software Engineer Intern",
            "June 2024 — August 2024",
            "McLean, VA",
            (
                text("Designed " + strong("Python") + " CLI tool to extract and normalise " + strong("Docker") + " container metadata across distributed " + strong("AWS ECS") + " clusters, generating standardised SBOMs and integrating automated testing with " + strong("Pytest") + "."),
            )
        ),
    )
)
#job(
    "Northwestern University",
    (
        (
            "Undergraduate Teaching Assistant",
            "September 2023 — Present",
            "Evanston, IL",
            (
                text("Mentored students to build a " + strong("Python interpreter and debugger in C/C++") + ", integrating " + strong("REST API") + " calls and OpenStreetMap data."),
                text("Supported labs on parallel programming, x86 Assembly, bitwise operations, compression, covering " + strong("MPI") + ", " + strong("OpenMP") + ", buffer overflows."),
                text("Found and patched cross-site-scripting security vulnerability in old " + strong("Perl") + " autograding scripts."),
            ),
        ),
    )
)
#job(
    "Northwestern University Fintech Club",
    (
        (
            "Core Software Developer",
            "October 2023 — Present",
            "Evanston, IL",
            (
                text("Simulated stochastic market data using Brownian noise in " + strong("C++") + " for consumption by trading algorithms, bots, and market makers."),
                text("Implemented interprocess communication layer using " + strong("Boost IPC") + " to stream tick data between simulation and strategy modules."),
                text("Engineered orderbook analytics pipeline in " + strong("Python") + " using " + strong("Polars") + " to enable real-time visualization and debugging."),
                text("Contributed to backend infra for distributed strategy deployment using " + strong("Docker") + ", " + strong("gRPC") + ", and " + strong("Kubernetes") + "."),
            )
        ),
    )
)
#job(
    "Northwestern Wildhacks",
    (
        (
            "Director of Technology",
            "May 2023 — Present",
            "Evanston, IL",
            (
                text("Engineered " + strong("React TypeScript") + " and " + strong("Flask") + " platform using " + strong("Firebase") + "/" + strong("DigitalOcean") + " to support real-time event operations for 350+ hackathon participants. Innovated custom " + strong("QR code check-in") + " integrated with " + strong("Firestore") + " to accelerate participant tracking by 50%."),
            )
        ),
    )
)
#job(
    "Draper Laboratory",
    (
        (
            "Software Engineer Intern",
            "June 2023 — August 2023",
            "Cambridge, MA",
            (
                text("Rendered government sensor data into heatmaps using " + strong("React, Redux, Docker Compose") + ". Complied with export regulations."),
            )
        ),
    )
)


#section("Projects")
#project(
    "OCaml CSV-to-TypeScript Content Compiler",
    "",
    (
        text("Shipped content bundling system in " + strong("OCaml") + " to compile typed CSVs into statically typed " + strong("TypeScript") + " modules for " + strong("React") + "; enforced schema validation and supported automatic S3 image upload to bundle static frontend content."),
    )
)
#project(
    "OCaml LLM-Powered Text Game Compiler",
    "",
    (
        text(strong("OCaml") + " compiler to transform Markdown into " + strong("React") + " with " + strong("LLM") + " prompt integration to generate LLM-powered interactive fiction."),
    )
)
#project(
    "ESP-300 Python Interface",
    "Gaynor Group, Northwestern University",
    (
        text("Hardware abstraction layer in " + strong("Python") + " to automate decades-old RS-232-controlled optics translation stage."),
    )
)
#project(
    "Distributed Job Posting Aggregation Pipeline",
    "",
    (
        text("Distributed job ingestion platform using " + strong("Kubernetes") + ", " + strong("gRPC") + ", " + strong("Redis") + ", and " + strong("PostgreSQL") + "; horizontally scaled collectors ingest and deduplicate listings from 100+ APIs, streaming data in real time to webhook consumers."),
    )
)
#project(
    "Debate Judge App",
    "National High School Debate League of China",
    (
        text("End-to-end tournament platform for 2500+ Chinese students per semester using " + strong("Python Flask") + ", " + strong("Rust") + ", " + strong("React/Redux") + " " + strong("MongoDB") + "; containerised deployment to " + strong("AWS") + " via " + strong("Docker") + " and employed serverless " + strong("AWS Lambda") + " functions for high throughput."),
    )
)
#project(
    "Clowder: Real-Time Location Sharing App",
    "WildHacks Hackathon 2023 First Prize Winner",
    (
        text("Location-sharing platform with " + strong("Elixir") + " WebSocket pub-sub backend" + " and " + strong("React TypeScript") + " UI with event-driven updates."),
    )
)


/* configure for your own needs */
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
