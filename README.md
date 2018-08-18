# Python Host Language Interface
The pyhli package offers complete access from Python to the [FIS MarketMap](https://fame.sungard.com/support.html) 
C-Toolkit ("FAME C-HLI"). 

FAME is a fully integrated software and database 
management system from FIS that provides the following capabilities: 

* Time series and cross-sectional data management;
* Financial calculation, data analysis, econometrics, and forecasting;
* Table generation and detailed multicolor, presentation-quality report writing;
* Multicolor, presentation-quality graphics;
* "What-if" analysis;
* Application development and structured programming;
* Data transfer to and from other applications;
* Tools for building customized graphical user interfaces.

## Prerequisites

* Install Python (>=3.6), Scipy and Jupyter Notebook. Consider
    * [Anaconda](https://www.anaconda.com/download/) or
    * [Docker](https://hub.docker.com/r/jupyter/scipy-notebook/)
* Install FAME and successfully enter and exit the FAME 4GL environment.
    
## Installation and testing

* `pip install pyhli`
* `python /opt/conda/bin/pyhli_hello_world.py`
* `python /opt/conda/bin/pyhli_retrieve_series.py`
* `python /opt/conda/bin/pyhli_versions.py`

Your Python scripts directory may be somewhere other than `/opt/conda/bin/`.  A quick trick to find the test script is `pip uninstall pyhli`, then respond `n` to the confirmation prompt.  Your script directory will be displayed to your terminal.

On first use, you will be directed to a website to obtain a `QOMA_PIN` which will entitle you to use the [pyhli](https://github.com/qomaio/pyhli) for the duration of your FAME license.