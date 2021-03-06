<%@ page language="java" %>
<html>
    <head><title>JBoss EAP - Systemprops</title>
        <style type="text/css">
            table.sample {
                border-width: 1px;
                border-spacing: 1px;
                border-style: groove;
                border-color: red;
                border-collapse: collapse;
                background-color: white;
            }

            table.sample th {
                border-width: 1px;
                padding: 2px;
                border-style: solid;
                border-color: red;
                background-color: rgb(255, 255, 240);
            }

            table.sample td {
                border-width: 1px;
                padding: 2px;
                border-style: solid;
                border-color: red;
                background-color: rgb(255, 255, 240);
            }
        </style>
    </head>
    <body>
        <h2>JBoss EAP - Systemprops Application</h2>
        <table class="sample">
            <tr>
                <th>Property Names</th>
                <th>Property Values</th>
            </tr>
            <%
                final String[] properties = {
                        "java.runtime.name",
                        "java.vm.vendor",
                        "java.runtime.version",
                        "java.vendor.url",
                        "user.timezone",
                        "user.language",
                        "user.country",
                        "os.name",
                        "os.arch",
                        "os.version",
                        "jboss.home.dir",
                        "jboss.host.name",
                        "jboss.node.name",
                        "jboss.domain.base.dir",
                        "jboss.domain.config.dir",
                        "jboss.server.name"
                };
                for (int i = 0; i < properties.length; i++) {
                    String propsname = properties[i];
                    String propsvalue = System.getProperty(propsname);
            %>
            <tr>
                <td><%= propsname %></td>
                <td><%= propsvalue %></td>
            </tr>
            <% } %>
        </table>
    </body>
</html>
