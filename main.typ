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
  "Evanston, Illinois, United States of America"
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
    "Machine Learning",
    "Accelerated Linear Algebra",
    "Probability and Stochastic Processes",
    "Fourier and Complex Analysis",
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
                text("Shipped high-throughput, schema-driven test data generator using " + strong("Go") + " and " + strong("Angular") + "; enabled visual schema editing, multi-format export (JSON, CSV), and arbitrarily nested structures for large-scale integration and fuzz testing of internal credit card services."),
                text("Leveraged " + strong("goroutines") + " and " + strong("channels") + " to parallelize data pipelines for performance under load; integrated tool into " + strong("Jenkins") + " and developer workflows, automating pre-deployment validation and accelerating onboarding through documentation and UX improvements."),
            )
        ),
    )
)#job(
    "Capital One",
    (
        (
            "Software Engineer Intern",
            "June 2024 — August 2024",
            "McLean, VA",
            (
                text("Designed and shipped " + strong("Python") + " CLI utility to scan, extract, and normalize " + strong("Docker") + " container metadata across " + strong("AWS ECS") + " clusters for internal engineering teams; automated generation of standardized " + strong("SBOMs") + " by parsing " + strong("Git") + " repositories and aligning versioned dependencies across deployments."),
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
                text("Mentored 200+ students in systems and parallel programming, guiding project design using " + strong("C") + ", " + strong("C++") + ", " + strong("Python") + ", " + strong("MPI") + ", and " + strong("OpenMP") + "."),
                text("Debugged and optimized projects involving low-level data compression, buffer overflows, vectorization, and REST API integrations for real-world map data."),
                text("Patched legacy XSS vulnerabilities in autograded infrastructure and assisted with migration to modernized " + strong("Slurm") + " backend for improved grading reliability."),
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
                text("Designed and shipped modular high-frequency trading simulation platform using " + strong("C++") + ", " + strong("Python") + ", and " + strong("Rust") + " enabling strategy teams to test execution logic on scalable synthetic tick data streams."),
                text("Built stochastic market event simulator in " + strong("C++") + " generating configurable real-time tick-level price series, integrating with strategy wrappers via " + strong("Boost") + " interprocess channels."),
                text("Developed distributed analytics and ingestion tools in " + strong("Python") + " leveraging " + strong("Polars") + " for large-scale orderbook data processing, supporting rapid signal iteration and debugging."),
                text("Contributed core components of a lightweight message broker in " + strong("Rust") + ", deploying with " + strong("gRPC") + ", " + strong("Docker") + ", and " + strong("Kubernetes") + " to emulate production infra."),
                text("Owned CLI tooling, CI/CD pipeline with " + strong("GitHub Actions") + " for ARM builds, and structured logging framework in modern " + strong("C++") + " to streamline developer workflows and enhance robustness."),
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
                text("Architected and shipped full-stack platform for 350+ hackathon participants using " + strong("React TypeScript") + ", " + strong("Flask") + ", " + strong("Firebase/Firestore") + ", and " + strong("Docker Compose") + "; delivered real-time collaboration and seamless onboarding across mobile and desktop."),
                text("Built and integrated custom QR code check-in and food distribution system, reducing manual tracking time by 30%; automated deployment and testing through " + strong("GitHub Actions") + " CI/CD for reliable live ops under event-scale load."),
            )
        ),
    )
)#job(
    "Draper Laboratory",
    (
        (
            "Software Engineer Intern",
            "June 2023 — August 2023",
            "Cambridge, MA",
            (
                text("Shipped interactive CBRN data heatmap using " + strong("React") + ", " + strong("Redux") + ", and " + strong("Docker Compose") + " for government clients; implemented recursive UI components for granular source selection."),
            )
        ),
    )
)


#section("Projects")
#project(
    "OCaml CSV-to-TypeScript Content Compiler",
    "",
    (
        text("Shipped content bundling system in " + strong("OCaml") + " to compile typed CSVs into build-time " + strong("TypeScript") + " modules for " + strong("React") + " apps, automating schema validation, S3 image upload, and static interface generation to eliminate manual data parsing for frontend teams."),
    )
)#project(
    "OCaml LLM-Powered Text Game Compiler",
    "",
    (
        text("Engineered compiler in " + strong("OCaml") + " to parse Markdown scripts into stateful " + strong("React") + " frontends and " + strong("Flask") + " LLM backends; automated full-stack containerization with " + strong("Docker Compose") + "."),
    )
)#project(
    "ESP-300 Python Interface",
    "Gaynor Group, Northwestern University",
    (
        text("Designed robust hardware abstraction layer in " + strong("Python") + " to control legacy ESP-300 translation stage via " + strong("RS-232") + ", improving automation and reducing lab software maintenance."),
    )
)#project(
    "Distributed Job Aggregation Pipeline",
    "",
    (
        text("Shipped horizontally-scalable ingestion system on " + strong("Kubernetes") + " streaming job data from 100+ sources via API, scraper, and " + strong("gRPC") + " microservices, aggregating into " + strong("PostgreSQL") + " and " + strong("Redis") + " with webhook integrations for real-time delivery and recovery."),
    )
)#project(
    "Debate Judge App",
    "National High School Debate League of China",
    (
        text("Engineered end-to-end tournament automation for 2500+ students per semester using " + strong("Python Flask") + ", " + strong("Rust APIs") + ", " + strong("React/Redux") + ", containerized with " + strong("Docker") + " and deployed to " + strong("AWS Lambda") + " for fully automated event operations."),
    )
)#project(
    "Clowder: Real-Time Location Sharing App",
    "WildHacks Hackathon 2023 First Prize Winner",
    (
        text("Engineered real-time location-sharing platform using " + strong("Elixir") + " pub-sub backend (Phoenix Channels, WebSockets) and " + strong("React TypeScript") + " frontend to deliver low-latency, multi-user event-driven updates in <24 hours."),
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
