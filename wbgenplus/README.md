# routertl-stubs/wbgenplus

Synthetic stub for the upstream-phantom `wbgenplus_pkg.vhd` package
referenced by [wbgenplus][wbgenplus]-generated VHDL but never published.
See [RTL-P4.35][p4_35] for the investigation, and the file header for
the provenance + audit trail.

## What this is

An empty VHDL package declaration named `wbgenplus_pkg`.  Nothing more.

## Why it exists

`wbgenplus.py`'s code generator emits `use work.wbgenplus_pkg.all;` at
the top of every generated file unconditionally.  The runtime support
package this clause references was never released in any public form
— mkreider/wbgenplus ships only the Python codegen, GSI's bel_projects
monorepo and wr-cores fork have zero hits for the filename, and
gitlab.com/ohwr/project has no `wbgenplus` repo at all.

Audit of all wr-cores files using the clause shows zero actual symbol
references from `wbgenplus_pkg` — the use clause is dead template
boilerplate.  This empty package satisfies the clause so VHDL
elaboration completes.

## When this retires

If a future wbgenplus version emits generated code that references
real `wbgenplus_pkg` symbols (functions, types, constants), GHDL
elaboration against this stub will fail loudly.  At that point the
curator either tracks down a real runtime upstream or writes a
non-empty stub matching the new contract.

[wbgenplus]: https://github.com/mkreider/wbgenplus
[p4_35]: https://github.com/djmazure/routertl-issues
