# Sailing Downstream II LFX Mentorship Code Challenge

Write a program in OCaml that reads a text file (or from the terminal). The program should emit the input with all words (groups of characters separated by whitespace) reversed, but otherwise identical in word order and line structure. 


Example input:\
–\
sq: RV128 only\
lr (? Figure A.13)\

jalr: broken\
–


Example output:\
–\
:qs 821VR ylno\
rl ?( erugiF )31.A

:rlaj nekorb\
–

### Quickstart
```console
$ dune build
$ dune exec riscv_downstream_sail_task_lfx
```

Example outputs:
```
Enter 'f' to read from file or 'c' to read from console: f
Enter filename: ./data/input.txt
:qs 821VR ylno
rl ?( erugiF )31.A

:rlaj nekorb
```

```
Enter 'f' to read from file or 'c' to read from console: c
Enter input: may the force be with you
Output: yam eht ecrof eb htiw uoy
Enter 'q' to quit, anything else to continue: q
```

