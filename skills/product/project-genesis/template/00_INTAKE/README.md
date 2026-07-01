# 00 · INTAKE — drop ALL related documents here

This is the **only source of truth for inputs.** Everything else in the project is derived from what's
in this folder. Put everything you have about the domain here, raw and unedited:

- PRDs, specs, briefs, requirement docs
- reference material, regulations, standards, code lists / master-data files (even legacy `.txt`)
- real-world examples: a competitor's app extraction, sample forms, sample data, screenshots
- emails / notes / meeting transcripts with domain detail

**Rules of intake**
- Don't pre-clean or summarize — the pipeline reads the raw material at Station 1.
- Keep both languages if your sources are bilingual.
- Note anything you already know is authoritative vs. a draft vs. someone's guess — Station 1 records
  each doc's authority in the source manifest.

When the docs are in, run the kickoff prompt (`prompts/00_KICKOFF.md`) or just say:
**"run Project Genesis on this folder."**
