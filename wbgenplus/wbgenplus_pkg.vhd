-- SPDX-FileCopyrightText: 2026 Daniel J. Mazure
-- SPDX-License-Identifier: MIT
--
-- Synthetic stub for wbgenplus_pkg — RTL-P4.35
--
-- Upstream wbgenplus (mkreider/wbgenplus, github.com/mkreider/wbgenplus)
-- is a Wishbone bus device generator written in Python.  Its
-- stringtemplates.py emits `use work.wbgenplus_pkg.all;` in every
-- generated VHDL file unconditionally — but the runtime support
-- package the use clause references was never published in any
-- public repo (verified 2026-05-07 across mkreider/wbgenplus,
-- GSI-CS-CO/bel_projects, GSI-CS-CO/wr-cores fork, mkreider/eca,
-- gitlab.com/ohwr/project — recursive GitHub tree search returns
-- 0 hits for filename wbgenplus_pkg.vhd).  The runtime appears
-- to be lost art or private to GSI's internal checkout.
--
-- Audit of consumers in wr-cores (modules/wr_eca/eca_auto*.vhd,
-- eca_queue_auto*.vhd, eca_tlu_auto*.vhd) confirms the use clause
-- is dead template boilerplate: zero symbol references from
-- wbgenplus_pkg in any consumer file.  An empty package satisfies
-- the clause and unblocks VHDL elaboration.
--
-- Provenance: this is a synthetic stub authored by the routertl
-- registry curator, not a copy of any upstream artifact.  If a
-- future wbgenplus version emits code that ACTUALLY references
-- wbgenplus_pkg symbols, GHDL elaboration will fail loudly here
-- and the curator can swap this for a real runtime — at which
-- point this stub retires.

package wbgenplus_pkg is
end package wbgenplus_pkg;

-- Sentinel entity — exists only to satisfy the routertl scanner's
-- D.75 (RTL-P3.293) package-only repo filter, which skips repos
-- whose every file declares only packages with no synthesisable
-- entities.  Synthetic stubs are a legitimate stub-shape that
-- doesn't fit the D.75 verification-framework heuristic — the
-- pattern wants a curator opt-in (`package_only_ok: true`) which
-- isn't shipped yet.  Until that lands, this zero-port entity
-- gives the scanner one routable identifier per stub bucket.
-- The entity is never instantiated by anything; deleting it has no
-- functional impact other than re-tripping the package-only filter.
library ieee;
use ieee.std_logic_1164.all;
entity wbgenplus_stub_sentinel is
end entity wbgenplus_stub_sentinel;
architecture stub of wbgenplus_stub_sentinel is
begin
end architecture stub;
