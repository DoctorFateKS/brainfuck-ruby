<p align="center">
  <img src="https://i.imgur.com/AUlnhZi.png" alt="Brainfuck Interpreter Logo" width="1000">
</p>

<h1 align="center">Brainfuck-Ruby</h1>
<p align="center">
  <i>One Brainfuck file. One command. One output.</i><br>
</p>

<p align="center">
  <img src="https://media0.giphy.com/media/v1.Y2lkPTc5MGI3NjExZXA5NDhmNTN1Z2lrcHQ0Ymp3b2JuYWFpMXRsaG1ndXBoZGQ4ajlsNSZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/OBIBNR9ATt3HdpcmLC/giphy.gif" alt="brain-gif1" width=240px>
  <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExanF2cWppY3NnZGV3ZnN4NmptcnFoaGszdzllNWV2OHR4b3ZzbWdlbyZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/MB75OzWrpUMOWfBHg0/giphy.gif" alt="brain-gif2" width=240px>
  <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExMTNzOHFnazB5NDdlNWh5NjNrbGYxejg0ODhtYWphMm5qeGZweWdyMCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/w8ZwcflDnA4kKJyMJq/giphy.gif" alt="brain-gif3" width=240px>
  <img src="https://media1.giphy.com/media/v1.Y2lkPTc5MGI3NjExNXFrdW51eXhpdmp5Z3dyNTB0bW12emZneXRpaDZyeWRsMGx0b2E4aCZlcD12MV9pbnRlcm5hbF9naWZfYnlfaWQmY3Q9cw/iQuwUsRiOmT4tZpRmQ/giphy.gif" alt="brain-gif4" width=240px>
</p>

---

- [About](#about)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Tech Stack](#tech-stack)
- [Next Steps](#next-steps)
- [Contributing](#contributing)
- [Acknowledgements](#acknowledgements)

---

### About

**Brainfuck-Ruby** is a simple *Brainfuck interpreter* implemented in Ruby. It allows you to run Brainfuck programs from the terminal by passing a Brainfuck file (`.bf`) as an argument. The interpreter implements all eight Brainfuck commands, providing a reliable execution of Brainfuck code.

---

### Features

- **Command-line execution** – Run Brainfuck programs easily.
- **File-based interpreter** – Reads and executes Brainfuck code from external files.
- **Loop handling** – Supports nested loops with matching bracket detection.
- **Memory simulation** – Implements a 30,000-cell memory tape like the original implementation of Brainfuck.
- **Byte wrapping** – Cell values wrap around from 0 to 255, emulating 8-bit behavior.

---

### Installation

```bash
# Clone the repository
git clone https://github.com/DoctorFateKS/brainfuck-ruby.git

# Move into the project folder
cd brainfuck-ruby
```

---

### Usage

```bash
# Run the script with a Brainfuck file
ruby main.rb <brainfuck_file>
```

---

### Tech Stack

- Ruby
- Brainfuck
- RSpec

---

### Next Steps

- [ ] Implementation of a transpiler mode.
- [ ] Implementation of a debug mode to step through a Brainfuck program one command at a time.
- [ ] Implementation of multi-file handling.
- [ ] Add more Brainfuck examples to the Examples folder.

---

### Contributing

**Contributions are welcome !**  
If you want to report an issue, fix a bug, add a new feature, refactor a portion of code or the entire codebase, feel free to do so.

1. Fork the project
2. Move your fingers on the keyboard and create your feature or fix branch: `(git checkout -b feature/my-feature)`
3. Commit your changes with a love message (or not...): `(git commit -m 'Implementation of my new feature')`
4. Push to the branch without breaking it: `(git push origin feature/my-feature)`
5. Open a pull request and wait... wait... wait again...

---

### Acknowledgements

Brainfuck-Ruby was built while reading th book [Computer Science From Scratch](https://github.com/davecom/ComputerScienceFromScratch) by [David Kopec](https://github.com/davecom).  
Many thanks to him for inspiring me to build it. It was a really good way to learn more about low-level logic, to discover how an interpreter works and the weirdo language that is Brainfuck.    
The source code initially written in Python was adapted for the Ruby programming language.  
All Brainfuck examples are either from [esolang.org](https://esolangs.org/wiki/Brainfuck) or [esoteric.sange.fi](http://esoteric.sange.fi/brainfuck/bf-source/prog/).

---

<p align="center"><a href="https://www.linkedin.com/in/kevin-saison17/"><img src="https://img.shields.io/badge/LinkedIn-0A66C2?style=for-the-badge&logo=linkedin&logoColor=white"/></a> <a href="mailto:saisonkevin92@gmail.com"><img src="https://img.shields.io/badge/Email-D14836?style=for-the-badge&logo=gmail&logoColor=white"/></a> </p>
