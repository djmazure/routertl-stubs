# routertl-stubs

Curator-authored synthetic stubs for upstream-phantom packages —
small VHDL package files that satisfy `use lib.X.all` clauses
referencing packages whose runtime artifacts were never published
upstream.

Each subdirectory is one stub bucket. See per-stub README + the
file header for provenance + audit trail (RTL-P4.35 et seq).

## Current stubs

- `wbgenplus/` — empty `wbgenplus_pkg` package.  Satisfies the
  unconditional `use work.wbgenplus_pkg.all` clause emitted by
  [mkreider/wbgenplus](https://github.com/mkreider/wbgenplus).
  Provenance: RTL-P4.35.

## Adding a new stub

1. Create `<stub_name>/` with a single .vhd file defining the
   referenced package + a header documenting the upstream phantom.
2. Add a `<stub_name>:` bucket to `routertl_stubs_buckets.yml` with
   the package's prefix and a one-line description.
3. Register in the routertl curator config with the three-layer
   pattern.

## Why a separate repo

Synthetic stubs need explicit curator provenance — they're authored
by the routertl maintainer, not copied from any upstream.  A
dedicated namespace (`routertl-stubs/...`) makes that lineage
visible at every consumption point: catalog entry, package YAML,
`rr pkg info`, `rr pkg add` log.  Hidden patches inside curator
config or random-vendored stubs from elsewhere fail the provenance
test.
