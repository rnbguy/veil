import Veil

veil module SimulateCompiledSmoke

individual flag : Bool

#gen_state

after_init {
  flag := false
}

action set_flag {
  flag := true
}

invariant [safe_flag] true

#gen_spec

/--
info: ✅ No violation in 1 traces
Seed: 1
-/
#guard_msgs in
#simulate compiled {} {} (seed := 1) (numTraces := 1) (maxSteps := 1)

end SimulateCompiledSmoke
