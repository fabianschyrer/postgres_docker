#########################################################################################################################
#																														#
#       Title:                 	Dockerfile                                                                  			#
#       Purpose:                Dockerfile for PostgreSQL 			      					                           	#
#       Author:                 Fabian Alexander Schyrer, Central Group                                               	#
#       Poasition:              General Manager, Cloud Engineering, CTO office                                        	#
#       Date created:           2018-09-22                                                                            	#
#                                                                                                                     	#
#########################################################################################################################


FROM library/postgres:9.6.2
RUN apt-get -qq update && apt-get -qq -y --no-install-recommends install \
    postgresql-9.6-postgis-2.3 \
    postgresql-9.6-postgis-2.3-scripts \
    postgis=2.3.*
COPY 00-create-extensions.sql /docker-entrypoint-initdb.d/
