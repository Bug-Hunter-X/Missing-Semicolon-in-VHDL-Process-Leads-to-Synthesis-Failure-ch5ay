# Missing Semicolon in VHDL Process

This repository demonstrates a common, yet easily overlooked, error in VHDL code: a missing semicolon ';' in an assignment statement within a process. This seemingly small error can lead to unexpected behavior and synthesis failures.

## The Bug
The `buggy_counter.vhd` file contains a simple counter with a subtle bug.  The assignment `internal_count <= internal_count + 1` is missing the required semicolon at the end.  This often fails synthesis silently or with obscure error messages, making it difficult to pinpoint.

## The Solution
The `buggy_counter_solution.vhd` file provides the corrected code with the semicolon added to the assignment statement.  This simple fix allows for successful compilation and simulation.

## How to Reproduce
1. Clone this repository.
2. Synthesize the `buggy_counter.vhd` file using your preferred VHDL synthesizer.  Observe the error or unexpected results.
3. Synthesize the `buggy_counter_solution.vhd` file. Observe the successful synthesis.

This example highlights the importance of careful coding practices and attention to detail when writing VHDL. Even minor syntax errors can lead to significant problems.