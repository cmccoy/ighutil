# ighutil

Tools for working with immunoglobulin heavy chain sequences at high throughput

# Prerequisites

* [samtools](http://samtools.sourceforge.net/)
* Python 2.7
* zlib
* A C++11-compatible compiler (tested against gcc 4.8)
* [Cython](http://cython.org) (tested against v0.20)

# Installation

* Run `pip install ./python` - installs `vdjalign` Python tool.

# Workflow

## Alignment

IGH reads are aligned via the included python package, via the command `ighutil align-fastq`.
The alignment process is simple: each sequence is aligned to all IGHV genes, keeping all alignments within a user-specified value of the maximum alignment score.

Alignment is multithreaded, and SSE3 accelerated using the excellent Smith-Waterman implementation from [klib](https://github.com/attractivechaos/klib).

The remainder of the sequence is aligned against IGHJ genes; then the remainder from the best IGHJ hit against IGHD genes.

The resulting alignments are stored in BAM format.
