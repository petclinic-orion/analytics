# Analytics
## Set Up Prometheus
   Download Prometheus:
   Go to the Prometheus download page and download the latest version suitable for your OS.
   Extract the files and navigate to the Prometheus directory.
   Configure Prometheus:
   Create a prometheus.yml configuration file in the Prometheus directory:
```
global:
  scrape_interval: 15s

scrape_configs:
- job_name: 'spring-boot-app'
  static_configs:
    - targets: ['localhost:8080']

```

Make sure the target corresponds to the port where your Spring Boot application is running.

### Run Prometheus:
In the Prometheus directory, start Prometheus with the following command:

```
./prometheus --config.file=prometheus.yml
```

## Set Up Grafana

### Download Grafana:
Download Grafana from the official website and install it.

### Run Grafana:
Start Grafana by running the Grafana server. On most systems, you can start Grafana using the following command:
```
sudo service grafana-server start
```

### Access Grafana:
Open your browser and go to http://localhost:3000.
Log in using the default credentials (admin/admin).
### Add Prometheus as a Data Source:
In Grafana, navigate to Configuration > Data Sources.
Add a new data source and select "Prometheus".
Set the URL to http://localhost:9090 (default Prometheus URL) and save.

### Create Dashboards:
You can create a new dashboard in Grafana to visualize the metrics from Prometheus.
Use the Prometheus data source to query metrics and build visualizations.