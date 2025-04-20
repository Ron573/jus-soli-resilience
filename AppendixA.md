## Appendix A | Agent-Based Resilience Model (v0.9)

**Model platform:** NetLogo 6.3.0  
**Code repo:** https://github.com/Ron573/jus-soli-resilience

### Purpose
Simulate how removing a single constitutional safeguard (birthright citizenship) propagates through a multi-layer democratic network.

### Entities
- **Citizen agents**: status = {full, partial, stateless}, trust ∈ [0, 1]
- **Institution nodes**: Congress, Courts, States, Agencies, Presidency
- **Shock event**: economic pulse every 10 ticks

### Parameters
| Parameter | Baseline | Project 2025 |
|-----------|----------|--------------|
| Redundancy (Rc) | 3 | 1 |
| Latency (L) | 2 ticks | 5 ticks |
| Trust-decay rate (δ) | 0.01 | 0.04 |

### Results
| Metric | Healthy | Project 2025 |
|--------|---------|--------------|
| Survivability | 92% | 57% |
| Avg. trust score | 0.66 | 0.41 |
| Collapse threshold | >50 ticks | 17 ticks |

### Interpretation
Revoking *jus soli* removes redundancy, accelerating civic collapse. External shocks cause widespread failure under low-trust, brittle systems.
