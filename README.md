# Geographic Data Science in Python

<a src='https://mybinder.org/v2/gh/darribas/gds_ufmg19/master'><img src='https://mybinder.org/badge_logo.svg'/></a>

## Description

This course will introduce you to the nascent field of
Geographic Data Science using the industry standard, the Python programming
language. We will cover key steps involved in solving practical
problems with spatial data, from manipulation and processing, to exploration.
These topics will be explored from a “hands-on” perspective
using a modern Python stack (e.g. geopandas, seaborn, scikit-learn, PySAL),
and examples using real-world spatial data.

We will start with an overview of the main ways to manipulate and visualise
data in Python. Then we will move on to spatial data, learning to perform
traditional GIS operations and to visualise data in a geographic context (e.g.
choropleths). The course will then move into explicitly spatial analysis,
delving into spatial weights matrices, which will give way to exploratory
spatial data analysis. In this context, we will cover both global and local
approaches. We will finish the course covering more advanced topics such as
the analysis of points and spatially constrained clustering.

## Agenda

**NOTE**: bring your own data!!!

### Day 1 - Monday 

- **9:00/10:00**: the Scientific Python stack: Jupyter and the Notebook [[`d1n1_intro`]](notebooks/d1n1_intro.ipynb)
- **10:00/11:00**: manipulating tabular data [[`d1n2_tabular`]](notebooks/d1n1_tabular.ipynb)
- **11:00/12:00**: visualising tabular data [[`d1n3_tabular_viz`]](notebooks/d1n3_tabular_viz.ipynb)

### Day 2 - Tuesday

- **9:00/11:00**: Introduction to spatial data [[`d2n1_geodata`]](notebooks/d2n1_geodata.ipynb)
- **11:00/12:00**: Visualizing spatial data [[`d1n1_geoviz`]](notebooks/d2n2_geoviz.ipynb)

### Day 3 - Wednesday

- **9:00/10:30**: Spatial weights [[`d3n1_esda`]](d3n1_esda.ipynb)
- **10:30/12:00**: Spatial autocorrelation [[`d3n1_esda`]](d3n1_esda.ipynb)

### Day 4 - Thursday

- **9:00/10:00**: interacting with raster data [[`d4n1_raster`]](d4n1_raster.ipynb)
- **10:00/11:00**: combining raster and vector data visually [[`d4n1_raster`]](d4n1_raster.ipynb)
- **11:00/12:00**: analysis combining raster and vector [[`d4n1_raster`]](d4n1_raster.ipynb)

### Day 5 - Friday

- **9:00/10:00**: reading and manipulating satellite imagery [[`d5n1_satellite`]](d5n1_satellite.ipynb)
- **10:00/12:00**: creating a land-cover classification [[`d5n1_satellite`]](d5n1_satellite.ipynb)

## Data

**BONUS**: data preparation in [`zzz_data_prep`](notebooks/zzz_data_prep.ipynb).

## Installation instructions: `docker`

This course can be run using the [`GDS` Docker container](https://github.com/darribas/gds_env).

Before starting the installation, make sure you have access to a reliable and reasonably fast internet connection. The software required takes up quite a bit of space and hence involves heavy downloads.

If you have administration rights on the machine you will use for the course, Docker is the safest and most stable route. 

**Note**: that you will need at least 10GB of space in your machine.

* Install [`docker CE`](https://www.docker.com/community-edition) (follow instructions for [macOS](https://store.docker.com/editions/community/docker-ce-desktop-mac), [Windows 10](https://store.docker.com/editions/community/docker-ce-desktop-windows) or [earlier](https://docs.docker.com/toolbox/overview/), [Ubuntu](https://store.docker.com/editions/community/docker-ce-server-ubuntu))
* Open a command prompt (ie. `Terminal.app` on macOS, `Powershell` on Windows)
* Run the following command. This will download about 10GB of data, so it might take a while (particularly on slow connections). Be patient :-)
    
    ```shell
    > docker pull darribas/gds:2.0
    
    ```
* Installation is ready!
* To test that it is correctly installed, you can run from the same command line, the following command:

    ```shell
    > docker image ls
    
    ```
    
* This should list, at least, the following:

    ```shell
    PS C:\Users\danie> docker image ls
    REPOSITORY                 TAG                 IMAGE ID            CREATED             SIZE
    darribas/gds               2.0                 ed2515e065b2        2 weeks ago         8.17GB
    ```
    [Note the `IMAGE ID` may vary]

Once installed, you can run the Docker container with the following command:

    ```
    docker run --rm -ti -p 8888:8888 -v ${PWD}:/home/jovyan/host darribas/gds:2.0
    ```

This will print out something similar to:

    ```
    /usr/local/bin/start.sh: ignoring /usr/local/bin/start-notebook.d/*

    Container must be run with group "root" to update passwd file
    Executing the command: jupyter lab
    [I 21:38:25.287 LabApp] Writing notebook server cookie secret to /home/jovyan/.local/share/jupyter/runtime/notebook_cookie_secret
    [W 21:38:26.210 LabApp] WARNING: The notebook server is listening on all IP addresses and not using encryption. This is not recommended.
    [I 21:38:26.251 LabApp] JupyterLab extension loaded from /opt/conda/lib/python3.6/site-packages/jupyterlab
    [I 21:38:26.251 LabApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
    [W 21:38:26.622 LabApp] JupyterLab server extension not enabled, manually loading...
    [I 21:38:26.623 LabApp] JupyterLab extension loaded from /opt/conda/lib/python3.6/site-packages/jupyterlab
    [I 21:38:26.624 LabApp] JupyterLab application directory is /opt/conda/share/jupyter/lab
    [I 21:38:26.700 LabApp] Serving notebooks from local directory: /home/jovyan
    [I 21:38:26.700 LabApp] The Jupyter Notebook is running at:
    [I 21:38:26.700 LabApp] http://(267dac20e049 or 127.0.0.1):8888/?token=950b3cd4c304a112e1554cafe67c1973efbed00bfd65b087
    [I 21:38:26.700 LabApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
    [C 21:38:26.701 LabApp]

    Copy/paste this URL into your browser when you connect for the first time,
    to login with a token:
        http://(267dac20e049 or 127.0.0.1):8888/?token=950b3cd4c304a112e1554cafe67c1973efbed00bfd65b087
    ```

Then you can go to a browser and access `http://localhost:8888/?token=mytoken`, replacing
`mytoken` by the token printed in the command line (in the case above, `950b3cd4c304a112e1554cafe67c1973efbed00bfd65b087`).

---


<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br /><span xmlns:dct="http://purl.org/dc/terms/" property="dct:title">Geographic Data Science with Python - UFMG'19</span> by <a xmlns:cc="http://creativecommons.org/ns#" href="https://github.com/darribas/gds_ufmg19" property="cc:attributionName" rel="cc:attributionURL">Dani Arribas-Bel</a> is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>.
