Install b2c with customerticketing module and with assisted service module
==================================================
Use the following commands to install the:
B2C Accelerator (vanilla recipe without CIS/OMS integration)
Assisted Service Module (ASM)
Customer Ticketing Add On 
and ATDD tests
Replace './install.sh' with './install.bat' if using windows.
==================================================
1. Setup the hybris platform using command
./install.sh -r b2c_customerticketing setup
2. Initialize the hybris platform using command 
./install.sh -r b2c_customerticketing initialize
3. Start the hybris server using command
./install.sh -r b2c_customerticketing start
==================================================