#!/bin/bash

# Compiling bundle properties with metadata
/usr/local/glassfish5/bin/asadmin create-jvm-options "\-Ddataverse.lang.directory=/opt/dv"
#/bin/cp -f /opt/dv/metadataFragment.xhtml /usr/local/glassfish5/glassfish/domains/domain1/applications/dataverse/metadataFragment.xhtml
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/se-SE > /opt/dv/Bundle_se.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/sl-SI > /opt/dv/Bundle_sl.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/de-AT > /opt/dv/Bundle_de.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/fr-FR > /opt/dv/Bundle_fr.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/it-IT > /opt/dv/Bundle_it.properties
/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/hu-HU > /opt/dv/Bundle_hu.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/hu-HU/astro > /opt/dv/astrophysics_hu.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/hu-HU/bio > /opt/dv/biomedical_hu.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/hu-HU/cit > /opt/dv/citation_hu.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/hu-HU/geo > /opt/dv/geospatial_hu.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/hu-HU/jour > /opt/dv/journal_hu.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/hu-HU/soc > /opt/dv/socialscience_hu.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/hu-HU/mime_disp > /opt/dv/MimeTypeDisplay_hu.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/hu-HU/mime_fac > /opt/dv/MimeTypeFacets_hu.properties
/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/hu-HU/roles > /opt/dv/BuiltInRoles_hu.properties
/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/en-US > /opt/dv/Bundle_en.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/en-US/astro > /opt/dv/astrophysics_en.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/en-US/bio > /opt/dv/biomedical_en.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/en-US/cit > /opt/dv/citation_en.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/en-US/geo > /opt/dv/geospatial_en.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/en-US/jour > /opt/dv/journal_en.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/en-US/soc > /opt/dv/socialscience_en.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/en-US/mime_disp > /opt/dv/MimeTypeDisplay_en.properties
#/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/en-US/mime_fac > /opt/dv/MimeTypeFacets_en.properties
/opt/dv/dataverse-property-files/lang-integrator.py /opt/dv/dataverse-property-files/en-US/roles > /opt/dv/BuiltInRoles_en.properties

if [ -n "$CV_MANAGER_URL" ]; then
    # English
    #echo ""  >> /opt/dv/Bundle_en.properties
    echo "cvmanagerURL=$CV_MANAGER_URL" >> /opt/dv/Bundle_en.properties
    echo 'lang=en' >> /opt/dv/Bundle_en.properties

    # Swedish
   # echo "cvmanagerURL=$CV_MANAGER_URL" >> /opt/dv/Bundle_se.properties
   # echo 'lang=se' >> /opt/dv/Bundle_se.properties

    # Slovenian
   # echo "cvmanagerURL=$CV_MANAGER_URL" >> /opt/dv/Bundle_sl.properties
   # echo 'lang=sl' >> /opt/dv/Bundle_sl.properties

    # German
   # echo "cvmanagerURL=$CV_MANAGER_URL" >> /opt/dv/Bundle_de.properties
   # echo 'lang=de' >> /opt/dv/Bundle_de.properties

    # French
   # echo "cvmanagerURL=$CV_MANAGER_URL" >> /opt/dv/Bundle_fr.properties
   # echo 'lang=fr' >> /opt/dv/Bundle_fr.properties

    # Italian
   # echo "cvmanagerURL=$CV_MANAGER_URL" >> /opt/dv/Bundle_it.properties
   # echo 'lang=it' >> /opt/dv/Bundle_it.properties

   echo "cvmanagerURL=$CV_MANAGER_URL" >> /opt/dv/Bundle_hu.properties
   echo 'lang=hu' >> /opt/dv/citation_hu.properties

    #cp -fr /opt/dv/cvmanager/templates/* /opt/glassfish4/glassfish/domains/domain1/applications/dataverse/ 
fi

curl http://localhost:8080/api/admin/settings/:Languages -X PUT -d '[{"locale":"hu", "title":"Magyar"},{ "locale":"en", "title":"English"}]'
