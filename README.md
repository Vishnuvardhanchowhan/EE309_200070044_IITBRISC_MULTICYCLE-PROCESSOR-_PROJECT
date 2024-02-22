# EE309_200070044_IITBRISC_MULTICYCLE-PROCESSOR-_PROJECT
IITB-RISC 2022 is a 16 bit multi-cycle processor with 16 Instructions, featuring a reduced instruction set computer (RISC) architecture with a compact instruction set of 16 instructions. The core principle of RISC architecture is to simplify instruction complexity and streamline execution.

The design encompasses both the control path and data path. The control path decodes incoming instructions to generate control signals, which are then transmitted to the data path. The data path comprises a register set, memory, ALU, and additional logic units such as shift operations. Based on the control signals, the data path performs the necessary operations, generating results and flags that are subsequently relayed back to the control path for further processing.

A flowchart was devised to illustrate the execution flow of all instructions. This flowchart was meticulously optimized to enhance cost-efficiency and reduce latency. Subsequently, a finite state machine (FSM) was constructed after analyzing the flowchart. The FSM determines the required resources for implementation, as well as evaluating the cost and performance metrics of the processor.

The design of the data path posed a significant challenge as it necessitated the optimal utilization of resources. Leveraging memory, registers, and the ALU, various mathematical functions such as addition, subtraction, comparison, and shifting were integrated into the data path design.

To validate the system, a sample testbench was executed. However, due to timing constraints, only simulations were performed, precluding hardware testing.

Overall, the IITB-RISC 2022 project showcases a meticulously crafted multi-cycle processor, embodying the principles of RISC architecture and optimized for efficient performance within resource constraints.

[PROJECT_REPORT.pdf](https://github.com/Vishnuvardhanchowhan/EE309_200070044_IITBRISC_MULTICYCLE-PROCESSOR-_PROJECT/files/9156222/PROJECT_REPORT.pdf)
[Project1-RISC-IITB.pdf](https://github.com/Vishnuvardhanchowhan/EE309_200070044_IITBRISC_MULTICYCLE-PROCESSOR-_PROJECT/files/9156223/Project1-RISC-IITB.pdf)
