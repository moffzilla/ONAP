
# from
NEXUS3=nexus3.onap.org:10001
docker login -u docker -p docker nexus3.onap.org:10001
echo "running docker image pulls in parallel for master"

docker pull $NEXUS3/onap/aaf:2.1.0-SNAPSHOT &
docker pull $NEXUS3/onap/aai-resources:1.2-STAGING-latest &
docker pull $NEXUS3/onap/aai-traversal:1.2-STAGING-latest &
docker pull $NEXUS3/onap/aai/esr-gui:1.1.0-SNAPSHOT &
docker pull $NEXUS3/onap/aai/esr-server:1.1.0-SNAPSHOT &
docker pull $NEXUS3/onap/admportal-sdnc-image:1.3-STAGING-latest &
docker pull $NEXUS3/onap/appc-image:1.3.0-SNAPSHOT-latest &
docker pull $NEXUS3/onap/ccsdk-dgbuilder-image:0.2.1-SNAPSHOT &
docker pull $NEXUS3/onap/ccsdk-odl-image:0.2.1-SNAPSHOT &
docker pull $NEXUS3/onap/ccsdk-odlsli-image:0.2.1-SNAPSHOT &
docker pull $NEXUS3/onap/clamp:2.0-STAGING-latest &
docker pull $NEXUS3/onap/cli:v1.1.0 &
docker pull $NEXUS3/onap/data-router:1.2-STAGING-latest &
docker pull $NEXUS3/onap/dmaap/dmaap-mr:1.0.1 &
docker pull $NEXUS3/onap/externalapi/nbi:latest &
docker pull $NEXUS3/onap/holmes/engine-management:v1.0.0 &
docker pull $NEXUS3/onap/holmes/rule-management:v1.0.0 &
docker pull $NEXUS3/onap/model-loader:1.2-STAGING-latest &
docker pull $NEXUS3/onap/modeling/javatoscachecker:latest &
docker pull $NEXUS3/onap/msb/msb_apigateway:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/msb/msb_discovery:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/multicloud/framework:v1.0.0 &
docker pull $NEXUS3/onap/multicloud/openstack-newton:1.0.0-SNAPSHOT &
docker pull $NEXUS3/onap/multicloud/openstack-ocata:1.0.0-SNAPSHOT &
docker pull $NEXUS3/onap/multicloud/openstack-windriver:1.0.0-SNAPSHOT &
docker pull $NEXUS3/onap/multicloud/vio:1.0.0-SNAPSHOT &
docker pull $NEXUS3/onap/multicloud/vio-vesagent:1.0.0 &
docker pull $NEXUS3/onap/music:latest &
docker pull $NEXUS3/onap/oof:latest &
docker pull $NEXUS3/onap/oom/kube2msb:1.0.0 &
docker pull $NEXUS3/onap/org.onap.dcaegen2.collectors.snmptrap:latest &
docker pull $NEXUS3/onap/org.onap.dcaegen2.collectors.ves.vescollector:latest &
docker pull $NEXUS3/onap/org.onap.dcaegen2.deployments.bootstrap:1.1.2 &
docker pull $NEXUS3/onap/org.onap.dcaegen2.deployments.cm-container:latest &
docker pull $NEXUS3/onap/org.onap.dcaegen2.deployments.k8s-bootstrap-container:latest &
docker pull $NEXUS3/onap/org.onap.dcaegen2.deployments.redis-cluster-container:latest &
docker pull $NEXUS3/onap/org.onap.dcaegen2.deployments.tca-cdap-container:latest &
docker pull $NEXUS3/onap/org.onap.dcaegen2.platform.cdapbroker:v4.0.0 &
docker pull $NEXUS3/onap/org.onap.dcaegen2.platform.configbinding:latest &
docker pull $NEXUS3/onap/org.onap.dcaegen2.platform.deployment-handler:latest &
docker pull $NEXUS3/onap/org.onap.dcaegen2.platform.inventory-api:latest &
docker pull $NEXUS3/onap/org.onap.dcaegen2.platform.policy-handler:latest &
docker pull $NEXUS3/onap/org.onap.dcaegen2.platform.servicechange-handler:latest &
docker pull $NEXUS3/onap/org.onap.dcaegen2.services.heartbeat:latest &
docker pull $NEXUS3/onap/org.onap.dcaegen2.services.prh.prh-app-server:latest &
docker pull $NEXUS3/onap/policy-drools:1.2-STAGING-latest &
docker pull $NEXUS3/onap/policy-pe:1.2-STAGING-latest &
docker pull $NEXUS3/onap/portal-app:2.1-STAGING-latest &
docker pull $NEXUS3/onap/portal-db:2.1-STAGING-latest &
docker pull $NEXUS3/onap/portal-wms:2.1-STAGING-latest &
docker pull $NEXUS3/onap/sdc-backend:1.2-STAGING-latest &
docker pull $NEXUS3/onap/sdc-elasticsearch:1.2-STAGING-latest &
docker pull $NEXUS3/onap/sdc-frontend:1.2-STAGING-latest &
docker pull $NEXUS3/onap/sdc-kibana:1.2-STAGING-latest &
docker pull $NEXUS3/onap/sdc-sanity:1.2-STAGING-latest &
docker pull $NEXUS3/onap/sdc/sdc-workflow-designer:1.1.0-SNAPSHOT-STAGING-latest &
docker pull $NEXUS3/onap/sdnc-dmaap-listener-image:1.3-STAGING-latest &
docker pull $NEXUS3/onap/sdnc-image:1.3-STAGING-latest &
docker pull $NEXUS3/onap/sdnc-ueb-listener-image:1.3-STAGING-latest &
docker pull $NEXUS3/onap/search-data-service:1.2-STAGING-latest &
docker pull $NEXUS3/onap/sparky-be:1.2-STAGING-latest &
docker pull $NEXUS3/onap/testsuite:1.2-STAGING-latest &
docker pull $NEXUS3/onap/usecase-ui:1.1.0-SNAPSHOT-STAGING-latest &
docker pull $NEXUS3/onap/usecase-ui/usecase-ui-server:1.1.0-SNAPSHOT-STAGING-latest &
docker pull $NEXUS3/onap/vfc/catalog:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/emsdriver:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/gvnfmdriver:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/jujudriver:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/multivimproxy:1.0.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/nfvo/svnfm/huawei:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/nfvo/svnfm/nokia:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/nfvo/svnfm/nokiav2:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/nslcm:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/resmanagement:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/vnflcm:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/vnfmgr:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/vnfres:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/wfengine-activiti:latest &
docker pull $NEXUS3/onap/vfc/wfengine-mgrservice:latest &
docker pull $NEXUS3/onap/vfc/ztesdncdriver:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vfc/ztevmanagerdriver:1.0.3-STAGING-latest &
docker pull $NEXUS3/onap/vfc/ztevnfmdriver:1.1.0-STAGING-latest &
docker pull $NEXUS3/onap/vid:1.2.1 &
docker pull $NEXUS3/onap/vnfsdk/refrepo:1.0.0 &
docker pull $NEXUS3/onap/vnfsdk/refrepo-postgres:1.0.0 &
docker pull $NEXUS3/openecomp/mso:1.2.1 &
docker pull docker.io/consul:0.9.3 & #>/dev/null 2>&1
docker pull docker.elastic.co/logstash/logstash:5.4.3 & #>/dev/null 2>&1
docker pull docker.elastic.co/kibana/kibana:5.5.0 & #>/dev/null 2>&1
docker pull docker.elastic.co/elasticsearch/elasticsearch:5.5.0 & #>/dev/null 2>&1
echo "finished launching pulls"
MAX_WAIT_INTERVALS=300
while [  $(ps -ef | grep docker | grep pull | wc -l) -gt 1 ]; do
  sleep 10
  MAX_WAIT_INTERVALS=$((MAX_WAIT_INTERVALS - 1))
  echo "waiting for last pull"
  if [ "$MAX_WAIT_INTERVALS" -eq 0 ]; then
    break
  fi
done

