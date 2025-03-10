projects = {
  "common": {
    "billing_account": "ABC123-DEF456-GHI789",
    "parent_folder": "folders/987654321"
  },
  "environments": [
    {
      "environment": "development",
      "projects": [
        {
          "name": "app-dev-project",
          "apis": [
            "compute.googleapis.com",
            "container.googleapis.com"
          ],
          "labels": {
            "environment": "development",
            "application": "app1"
          }
        }
      ]
    },
    {
      "environment": "production",
      "projects": [
        {
          "name": "app-prod-project",
          "apis": [
            "compute.googleapis.com",
            "container.googleapis.com",
            "cloudbuild.googleapis.com"
          ],
          "labels": {
            "environment": "production",
            "application": "app1"
          }
        }
      ]
    }
  ]
}
networking = {
  "enable_hub_and_spoke": true,
  "dns_enable_logging": true,
  "shared_vpc_host_project_id": "shared-vpc-host-123"
}
app_infra = {
  "environments": [
    {
      "environment": "development",
      "business_units": [
        {
          "name": "bu1",
          "gke_clusters": [
            {
              "name": "app-cluster-dev",
              "region": "us-central1",
              "network_config": {
                "network": "app-network",
                "subnetwork": "app-subnet",
                "ip_range_pods": "10.0.0.0/16",
                "ip_range_services": "10.1.0.0/16"
              }
            }
          ]
        }
      ]
    },
    {
      "environment": "production",
      "business_units": [
        {
          "name": "bu1",
          "gke_clusters": [
            {
              "name": "app-cluster-prod",
              "region": "us-central1",
              "network_config": {
                "network": "app-network",
                "subnetwork": "app-subnet",
                "ip_range_pods": "gke-pods-range",
                "ip_range_services": "gke-services-range"
              }
            }
          ]
        }
      ]
    }
  ]
}
bootstrap = {
  "org_id": "123456789012",
  "billing_account": "ABC123-DEF456-GHI789",
  "default_region": "us-central1"
}
org = {
  "parent_folder": "folders/987654321",
  "scc_notification_name": "security-alerts"
}
