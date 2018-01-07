B2C Accelerator with CIS deployed via 6 CIS service wars to an external CIS server (external to the hybris platform server)
 Setup Platform and CIS:
 	1. set SUITE_HOME environmental variable to point the the root directory of the commerce-suite.
 	2. setup platform and generate/deploy CIS wars from archetypes to the CIS server using command ./install.sh -r b2c_acc_cis_server setup
	3. initialize platform using command ./install.sh -r b2c_acc_cis_server initialize
	4. start platform and external CIS server using command ./install.sh -r b2c_acc_cis_server start

	Note: when stopping the platform from the shell/command window using "ctrl c" the external CIS server will still be running.
	    1. stop the CIS server using command ./install.sh -r b2c_acc_cis_server stopCISServer
	    2. start the CIS server using command ./install.sh -r b2c_acc_cis_server startCISServer

 Setup CIS service wars only:
	1. generate CIS wars from archetypes using command ./install.sh -r b2c_acc_cis_server generateCISWars
	2. deploy CIS wars to external CIS server using command ./install.sh -r b2c_acc_cis_server deployCISWarsToCISServer
