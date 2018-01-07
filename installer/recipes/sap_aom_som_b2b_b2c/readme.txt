Asynchronous and synchronous order management for B2B and B2C scenarios with SAP ERP:

0. Please follow the manual steps as documented in 
https://wiki.hybris.com/display/accdoc/Installing+B2C+and+B2B+Accelerators+in+Parallel
to create a B2B store front named 'yb2bacceleratorstorefront'

1. Setup the hybris platform using command
./install.sh -r sap_aom_som_b2b_b2c setup

2. Initialize the hybris platform using command 
./install.sh -r sap_aom_som_b2b_b2c initialize

3. Start the hybris server using command
./install.sh -r sap_aom_som_b2b_b2c start

4. Stop the hybris server as well as the datahub service using command
./install.sh -r sap_aom_som_b2b_b2c stop
