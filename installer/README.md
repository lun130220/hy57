## hybris installer

With the **Installer** you can install different **scenarios** of the Commerce Suite on your local machine, e.g.

* B2C Accelerator
* B2B Accelerator with OMS
* B2B Accelerator with Data Hub and SAP ERP
* OMS standalone
* etc

The scenarios are defined by so-called **recipes**.
 
Each recipe contains at least three tasks to execute:

* setup - sets up the Commerce Suite with a defined set of extensions, necessary configurations settings, etc
* initialize - initializes the Commerce Suite
* start - starts the hybris Server

Additionally each recipe has one "hidden" task named **perform** which combines all above tasks in that order.

## How do I execute my recipe?

You exececute the recipes with the script `install.sh` (Unix/Mac) or `install.bat` (Windows), respecitively. Recipes are located in the `recipes` folder. Use the `-r` switch to specify the recipe you want to use (as explained below).

To show the usage of the `install.sh` script type:

    ./install.sh -h

To run the default `setup` task for a given recipe type:

    ./install.sh -r my_recipe

To run a particular task for a give recipe type:

    ./install.sh -r my_recipe my_special_task

To list all available recipes type:

    ./install.sh -l

To list all tasks for a given recipe type:

    ./install.sh -r my_recipe --tasks


# Custom properties

If you need to override the configuration properties provided by a recipe, for instance database credentials, you don't need to edit recipe yourself. You can put a file named **custom.properties** in the **customconfig** folder in the installer home direrectory and this file will be picked up automatically and will override properties provided by a recipe.

For instance to provide your database settings your **custom.properties** could look like this:

    db.url=jdbc:mysql://localhost/yourDb?useConfigs=maxPerformance&characterEncoding=utf8
    db.driver=com.mysql.jdbc.Driver
    db.username=user
    db.password=pass
    mysql.optional.tabledefs=CHARSET=utf8 COLLATE=utf8_bin
    mysql.tabletype=InnoDB
    mysql.allow.fractional.seconds=true

## Known issues

There is a know bug in JDK 7 lower than u60 on Windows machines with redirecting output to the console:

[https://bugs.openjdk.java.net/browse/JDK-8023130](https://bugs.openjdk.java.net/browse/JDK-8023130)

[http://bugs.java.com/view_bug.do?bug_id=8025217](http://bugs.java.com/view_bug.do?bug_id=8025217)

Please make sure that you have latest version of JDK7.