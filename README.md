# 🐫 OCaml Journey

> From zero to Jane Street — one commit at a time.

[![OCaml](https://img.shields.io/badge/OCaml-5.4.1-orange?style=flat-square&logo=ocaml)](https://ocaml.org)
[![GitHub Streak](https://img.shields.io/badge/Daily%20Commits-Active-brightgreen?style=flat-square)](https://github.com/adithn875/ocaml-journey)
[![Target](https://img.shields.io/badge/Target-Jane%20Street%20%7C%20Tarides-blue?style=flat-square)](https://github.com/adithn875/ocaml-journey)

---

## 👤 About Me

I'm **Adith**, a B.E. graduate in AI & Data Science (2026) from Bengaluru, India.

I started this repository with **zero OCaml knowledge** and a clear goal — land a role at an OCaml-heavy company like Jane Street or Tarides. Every single day I write OCaml, learn something new, and push it here.

This repo is my public proof of work.

- 🔗 [LinkedIn](https://linkedin.com/in/adithn875)
- 🐙 [GitHub](https://github.com/adithn875)
- 📧 Open to OCaml roles — reach out!

---

## 🎯 Goal

> Become proficient enough in OCaml to contribute to production-grade functional systems and land a role at **Jane Street**, **Tarides**, or similar OCaml-focused companies.

---

## 🗺️ Roadmap

### ✅ Week 1 — Foundations
| Day | Topic | Status |
|-----|-------|--------|
| Day 1 | Let bindings, values, basic functions | ✅ |
| Day 2 | Types and type inference | ✅ |
| Day 3 | Functions and pattern matching | ✅ |
| Day 4 | Recursion and the `rec` keyword | ✅ |
| Day 5 | Lists and list pattern matching | ✅ |
| Day 6 | Higher order functions — map, filter, fold | ✅ |
| Day 7 | Tuples and Option types | ✅ |
| **Project** | **Shopping Cart — using all Week 1 concepts** | ✅ |

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

### 📅 Week 3 — Real OCaml (Coming Soon)
- Dune build system
- Writing and running executables
- File I/O
- First CLI tool

### 📅 Week 4 — Interview Ready (Coming Soon)
- Data structures from scratch (trees, graphs, stacks)
- Algorithm problems in OCaml
- Jane Street style problems
- Reading real OCaml codebases

---

## 🛠️ Environment

```
OS       : Ubuntu 24 (WSL2 on Windows 10)
OCaml    : 5.4.1
opam     : installed
utop     : installed
dune     : 3.23.1
Editor   : VSCode + OCaml Platform extension
```

---

## 📁 Repository Structure

```
ocaml-journey/
├── week-01/
│   ├── day-01-basics/
│   ├── day-02-types/
│   ├── day-03-functions/
│   ├── day-04-recursion/
│   ├── day-05-lists/
│   ├── day-06-higher-order/
│   ├── day-07-tuples-options/
│   └── week1-project/        ← Shopping Cart
├── week-02/
│   ├── day-08-variants/
│   ├── day-09-records/
│   └── ...
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

**Features:**
- ✅ Add and list items
- ✅ Calculate total cost
- ✅ Safe item search with `Option` types
- ✅ Filter items by price
- ✅ Formatted print output

---

## 💡 Key Insights So Far

**1. Types are everything**
OCaml's type system catches bugs before your program runs. No more runtime surprises.

**2. Pattern matching > if/else**
Matching on the shape of data is cleaner, exhaustive, and compiler-verified.

**3. Recursion over loops**
No `for` or `while` — recursion with a base case is how you think in OCaml.

**4. Options over null**
`None` and `Some x` force you to handle missing values explicitly. No null pointer crashes.

**5. Immutability by default**
Records don't mutate — you create new ones with `{ r with field = value }`. Predictable, safe code.

---

## 📈 Why OCaml?

- Used at **Jane Street** for all trading systems
- Used at **Tarides** for MirageOS and developer tools
- **Type safe** — compiler catches errors humans miss
- **Functional** — no side effects, no surprises
- **Fast** — compiles to native code, close to C performance

---

## 🔥 Daily Commitment

Every day I:
1. Create a new `.ml` file for the day's concept
2. Test everything in `utop`
3. Push to this repo with a meaningful commit message

No days off. No half commits. Just consistent progress.

---

> *"OCaml is not just a language — it's a way of thinking about correctness."*

---

⭐ Star this repo if you're on a similar journey!
