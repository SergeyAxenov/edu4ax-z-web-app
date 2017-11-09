WEB_INFO_TEMPLATE=$ZEPPELIN_CONF_DIR/WEB-INF/web.xml.template
ZEPPELIN_WEB_ASSETS_DIR=$ZEPPELIN_CONF_DIR/web_assets
if [ -f "$WEB_INFO_TEMPLATE" ]; then
	WEB_INFO=$ZEPPELIN_CONF_DIR/WEB-INF/web.xml
	rm -rf $WEB_INFO
	echo Configuring jetty virtual directory pointing to $ZEPPELIN_WEB_ASSETS_DIR
	sed 's@${ZEPPELIN_WEB_ASSET_DIR}@'"$ZEPPELIN_WEB_ASSETS_DIR"'@gI' $WEB_INFO_TEMPLATE > $WEB_INFO
    jar -uf $ZEPPELIN_WAR -C $ZEPPELIN_CONF_DIR WEB-INF/web.xml
    chmod 644 $ZEPPELIN_WAR
	echo Jetty virtual directory in $ZEPPELIN_WAR is configured	
fi


