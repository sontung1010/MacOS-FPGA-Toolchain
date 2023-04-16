# MacOS FPGA Toolchain Demo (in progress)

## About

## Workflow and Installation
### Write code using Vim with [Verilog syntax](https://github.com/vhda/verilog_systemverilog.vim)
#### Installation
##### Using vim-plug

```VimL
Plug 'vhda/verilog_systemverilog.vim'
:PlugInstall
```

#### Demo

```
vim ALU_design.v
```

![Vim](vim.png)

### Compile code with [Icarus Verilog](https://github.com/steveicarus/iverilog)
#### [Installation](https://iverilog.fandom.com/wiki/Installation_Guide)
##### Using homebrew

```
brew install icarus-verilog
```

#### [Demo](https://iverilog.fandom.com/wiki/Getting_Started)
##### Compile file(s)

```
iverilog -o <name of result file> <file1.v> <file2.v> <file3.v>
```

![iverilog1](iverilog_demo1.png)

##### or put all verilog file into one text file called 'file_list.txt'
![file_list](file_list.png)

```
iverilog -o <name of result file> -c file_list.txt
```

![iverilog2](iverilog_demo2.png)

#### Run Simulation
##### Note: remember to put the name of simulation file in test verilog file in follow format:
```
$dumpfile(<name of simulation file.vcd>);
$dumpvars;
```
![sim_file](sim_file.png)
##### then run
```
vvp <name of result file>
```
