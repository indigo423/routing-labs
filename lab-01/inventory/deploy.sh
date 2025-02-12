#!/usr/bin/env bash

OPENNMS_HOST=${ONMS_CORE_HOST:-127.0.0.1}
OPENNMS_USER=admin
OPENNMS_PASS=admin
OPENNMS_PORT=8980

echo -n "Create Foreign Sources                             ... "
curl -s -u ${OPENNMS_USER}:${OPENNMS_PASS} \
     -X POST \
     -H "Content-Type: application/xml" \
     -H "Accept: application/xml" \
     -d @foreign-source/routing-labs-lab-01.xml \
     http://${OPENNMS_HOST}:${OPENNMS_PORT}/opennms/rest/foreignSources
echo "DONE"

echo -n "Create Requisition                                 ... "
curl -s -u ${OPENNMS_USER}:${OPENNMS_PASS} \
     -X POST \
     -H "Content-Type: application/xml" \
     -H "Accept: application/xml" \
     -d @requisition/routing-labs-lab-01.xml \
     http://${OPENNMS_HOST}:${OPENNMS_PORT}/opennms/rest/requisitions
echo "DONE"

echo -n "Import requisition for routing-lab-01 environment  ... "
curl -s -u ${OPENNMS_USER}:${OPENNMS_PASS} \
     -X PUT \
     http://${OPENNMS_HOST}:${OPENNMS_PORT}/opennms/rest/requisitions/routing-labs-lab-01/import
echo "DONE"
