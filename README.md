# Example automated data-wrangling pipeline

This minimal project demonstrates an end-to-end automated pipeline.

Run the complete pipeline from this directory with:

```sh
make
```

The final output is `out/report.html`. The joined CSV, plot, and intermediate
`.rds` files are also kept in `out/` so that every stage can be inspected.

To remove all generated outputs and rebuild from scratch:

```sh
make clean
make
```
