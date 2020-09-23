# Calculator
This project builds a simple calculator in Elixir using independent processes.

Additional description about the project and its features.

## Built With

- Elixir
- VS code

## Getting Started

**Run the code demonstrations below**

*for the spawn approach use*

```bash
iex -S mix
pid=Calculator.start
```

The following commands will depend with what you want to do

if you want to add run
```bash
Calculator.add(pid, value)
```

if you want to substract run
```bash
Calculator.substract(pid, value)
```

if you want to divide run
```bash
Calculator.divide(pid, value)
```

if you want to multiply run
```bash
Calculator.multiply(pid, value)
```
if you want to check the cuurent value run
```bash
Calculator.value(pid)
```

*for the GenServer approach run*

```bash
Supervisor.Calculator.start_link
```
*The function for the mathematical operator are the same, just replace Calculator with Gen.Calculator*
*and when running the function ommit the pid.*
for example, for addition run 
```bash
Gen.Calculator.add(value)
```
*and follow the same pattern for the other operators*

Note that value is a custom number that you will enter

- Ruby

## Setup

To run this project locally, please ensure you have Elixir installed on your machine, then clone this repository by running.

```bash
git clone https://github.com/NtwaliHeritier/calculator-elixir
```

After cloning run

```bash 
cd calculator
```
Lastly run either of the commands listed in the getting started section above.

## Authors

👤 **Ntwali Heritier**

- Github: [@NtwaliHeritier](https://github.com/NtwaliHeritier)
- Twitter: [@NtwaliHeritier](https://twitter.com/NtwaliHeritier)
- Linkedin: [Ntwali Heritier](https://linkedin.com/in/ntwali-heritier-9950001a2)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](lic.url) licensed.


