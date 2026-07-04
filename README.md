# 🐫 OCaml Journey
> From zero to Jane Street — one commit at a time.

![OCaml](https://img.shields.io/badge/OCaml-5.4.1-EC6813?style=flat-square&logo=ocaml&logoColor=white)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=flat-square)
![Day](https://img.shields.io/badge/Day-28-blue?style=flat-square)
![Commits](https://img.shields.io/github/commit-activity/w/adithn875/ocaml-journey?style=flat-square&label=Weekly%20Commits)

## 👤 About Me
I'm Adith, a B.E. graduate in AI & Data Science (2026) from Bengaluru, India.

I started this repository with zero OCaml knowledge and a clear goal — land a role at an OCaml-heavy company like Jane Street or Tarides. Every single day I write OCaml, learn something new, and push it here.

This repo is my public proof of work.

🔗 [LinkedIn](https://www.linkedin.com/in/adith-nk/) &nbsp;|&nbsp; 🐙 [GitHub](https://github.com/adithn875) &nbsp;|&nbsp; 📧 Open to OCaml roles — reach out!

---

## 🎯 Goal
Become proficient enough in OCaml to contribute to production-grade functional systems and land a role at Jane Street, Tarides, or similar OCaml-focused companies.

---

## 🗺️ Roadmap

### ✅ Week 1 — Foundations
| Day | Topic | Status |
|-----|-------|--------|
| Day 1 | Let bindings, values, basic functions | ✅ |
| Day 2 | Types and type inference | ✅ |
| Day 3 | Functions and pattern matching | ✅ |
| Day 4 | Recursion and the rec keyword | ✅ |
| Day 5 | Lists and list pattern matching | ✅ |
| Day 6 | Higher order functions — map, filter, fold | ✅ |
| Day 7 | Tuples and Option types | ✅ |
| Project | Shopping Cart — using all Week 1 concepts | ✅ |

### 🔄 Week 2 — Thinking in OCaml
| Day | Topic | Status |
|-----|-------|--------|
| Day 8 | Variants and custom types | ✅ |
| Day 9 | Records | ✅ |
| Day 10 | Modules | 🔄 |
| Day 11 | Error handling with Result | 🔄 |
| Day 12 | Higher order functions deep dive | 🔄 |
| Day 13 | Trees and recursive data structures | 🔄 |
| Day 14 | Week 2 project + test | 🔄 |

### 📅 Week 3 — Real OCaml
- Dune build system
- Writing and running executables
- File I/O
- First CLI tool

### 📅 Week 4 — Interview Ready
- Data structures from scratch (trees, graphs, stacks)
- Algorithm problems in OCaml
- Jane Street style problems
- Reading real OCaml codebases

---

## 🧠 DSA Track (Running in parallel)

### ✅ List Recursion — Complete
| Tier | Functions |
|------|-----------|
| Easy | `length`, `nth`, `last`, `remove_duplicates` |
| Medium | `flatten`, `zip`, `take`, `drop`, `rotate` |
| Harder | `chunk`, `run_length_encode`, `interleave` |

### ✅ Sorting — Complete
| Algorithm | Functions |
|-----------|-----------|
| Insertion Sort | `insert_sorted`, `insertion_sort` |
| Merge Sort | `split`, `merge`, `merge_sort` |

### ✅ Trees — Complete
| Function | Status |
|----------|--------|
| `size` | ✅ |
| `height` | ✅ |
| `member` | ✅ |
| `inorder` | ✅ |
| BST insert, search | ✅ |

---

## 🛠️ Environment
| Tool | Version |
|------|---------|
| OS | Ubuntu 24 (WSL2 on Windows 10) |
| OCaml | 5.4.1 |
| opam | installed |
| utop | installed |
| dune | 3.23.1 |
| Editor | VSCode + OCaml Platform |

---
## 📁 Repository Structure

```
ocaml-journey/
├── week-01/
├── week-02/
├── dsa/
│   ├── 01-arrays/
│   ├── 02-list-recursion/
│   │   ├── day25.ml
│   │   ├── insertion_sort.ml
│   │   └── merge_sort.ml
│   ├── 03-trees/
│   │   └── trees.ml
│   └── toolbox/
└── README.md
```
---

## 🏆 Week 1 Project — Shopping Cart
A fully functional shopping cart built using every concept from Week 1.

```ocaml
(* Tuple-based product type *)
let make_item name price qty = (name, price, qty)

(* Higher order — total cost using fold *)
let cart_total items =
  List.fold_left (fun acc item -> acc +. item_total item) 0.0 items

(* Option type — safe item search *)
let rec find_item name items =
  match items with
  | [] -> None
  | (n, p, q) :: tail ->
    if n = name then Some (n, p, q)
    else find_item name tail
```

---

## 💡 Key Insights So Far
1. **Types are everything** — OCaml's type system catches bugs before your program runs.
2. **Pattern matching > if/else** — Matching on the shape of data is cleaner and compiler-verified.
3. **Recursion over loops** — No `for` or `while` — recursion with a base case is how you think in OCaml.
4. **Options over null** — `None` and `Some x` force you to handle missing values explicitly.
5. **Immutability by default** — Records don't mutate — predictable, safe code.
6. **Compose small functions** — Complex algorithms like merge sort are just small focused functions composed together.

---

## 📈 Why OCaml?
- Used at Jane Street for all trading systems
- Used at Tarides for MirageOS and developer tools
- Type safe — compiler catches errors humans miss
- Functional — no side effects, no surprises
- Fast — compiles to native code, close to C performance

---

## 🔥 Daily Commitment
Every day I:
- Create a new `.ml` file for the day's concept
- Test everything in `utop`
- Push to this repo with a meaningful commit message

> *"OCaml is not just a language — it's a way of thinking about correctness."*

---

⭐ Star this repo if you're on a similar journey!
