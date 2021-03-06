<%@ page contentType="text/html; UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title id='title'>OWF Dashboard Edit</title>

		<!-- ** CSS ** -->
        <!-- base library -->
        <g:if test="${params.themeName != null && params.themeName != ''} ">
        <link rel='stylesheet' type='text/css' href='../themes/${params.themeName.encodeAsURL().encodeAsHTML()}.theme/css/${params.themeName.encodeAsURL().encodeAsHTML()}.css' />
        </g:if>
        <g:else>
        <p:css name='../${owfCss.defaultCssPath()}' absolute='true'/>
        </g:else>

        <!-- initialize ozone configuration from server -->
        <owfImport:jsOwf path="config" resource="config" pathToRoot="../"/>

        <!-- include our server bundle, in dev mode a full list of js includes will appear -->
        <p:javascript src='owf-admin-widget' pathToRoot="../" />
        <p:javascript src='owf-dashboard-edit-widget' pathToRoot="../" />
        <!-- include our server bundle, in dev mode a full list of js includes will appear -->

        <script language = "javascript">
			if(Ext.isIE) {
				Ext.BLANK_IMAGE_URL = '../themes/common/images/s.gif';
			}

			Ext.onReady(function() {
				OWF.ready(function(){
					var viewport = Ext.create('Ext.container.Viewport', {
						layout: 'fit',
						isLayedOut: false,
						listeners: {
							afterlayout: {
								fn: function(cmp) {
									cmp.isLayedOut = true;
								},
								single: true
							}
						},
						items: [
							{
								xtype: 'dashboardeditpanel'
							}
						]
					});
				});
			});
		</script>
    </head>
     <body>
    </body>
</html>
