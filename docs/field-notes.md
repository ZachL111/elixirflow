# Field Notes

The fixture is small on purpose, which makes each domain case carry real weight.

The domain cases cover `stage pressure`, `backpressure`, `retry gap`, and `output drift`. They sit beside the smaller starter fixture so the project has both a compact scoring check and a domain-flavored review check.

`baseline` is the strongest case at 226 on `stage pressure`. `edge` is the cautious anchor at 126 on `retry gap`.

The extra check gives the repository a behavior path that can fail for a domain reason, not only a syntax reason.
