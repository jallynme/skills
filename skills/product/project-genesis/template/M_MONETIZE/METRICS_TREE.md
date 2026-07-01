# Metrics Tree — <PROJECT_NAME>  (defined BEFORE build, so you ship instrumented)

> Owned by **Head of Data**. Define the North Star and the events *before* Station 7 so every story
> ships with its tracking. Building without this = building blind.

## 1. North Star
- **North-Star metric:** <the one number that best captures delivered value, e.g. "orders
  completed per active account per week">
- **Why it's the NSM (not a vanity metric):** <it rises only when customers get real value>
- **Kill metric:** <the number that, if flat/zero after launch, means stop>

## 2. KPI tree (inputs that drive the North Star)
```
            North Star: <…>
            /         |          \
   Acquisition    Activation     Retention/Revenue
   <signups>     <reach "aha">   <repeat use / paid>
      |              |               |
  <channel CTR>  <onboarding    <weekly active / churn /
                  completion>     expansion>
```
| Layer | KPI | Definition | Target |
|---|---|---|---|
| Acquisition | <signups/wk> | <…> | <…> |
| Activation | <% reach aha> | <the "aha" event within N days> | <…> |
| Retention | <WAU / churn> | <…> | <…> |
| Revenue | <MRR / conversion> | <…> | <…> |

## 3. Event taxonomy (instrument these in the build)
> Consistent names: `object_action` (snake_case). Each maps to a step in `02_DIAGRAMS/flows.md`.

| Event | Fires when | Properties | Maps to story | KPI it feeds |
|---|---|---|---|---|
| `account_created` | signup completes | plan, source | EPIC-01-S1 | Acquisition |
| `<core_object>_submitted` | core action done | type, value | EPIC-…-S… | Activation |
| `<aha_event>` | user hits first value | … | … | Activation |
| `subscription_started` | paid | tier, amount | EPIC-14-S… | Revenue |

## 4. Instrumentation rule
Every Station-7 story whose flow includes a tracked step must list its event(s) in §6 Technical notes
and add a QA check that the event fires. No event = the story isn't done.
