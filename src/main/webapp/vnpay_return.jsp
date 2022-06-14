<%@page import="java.net.URLEncoder" %>
<%@page import="java.nio.charset.StandardCharsets" %>
<%@page import="com.group04.common.Config" %>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@page import="java.util.Enumeration" %>
<%@page import="java.util.Map" %>
<%@page import="java.util.HashMap" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <title>VNPAY RESPONSE</title>
    <!-- Bootstrap core CSS -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
            integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
</head>
<body>
<%
    //Begin process return from VNPAY
    Map fields = new HashMap();
    for (Enumeration params = request.getParameterNames(); params.hasMoreElements(); ) {
        String fieldName = URLEncoder.encode((String) params.nextElement(), StandardCharsets.US_ASCII.toString());
        String fieldValue = URLEncoder.encode(request.getParameter(fieldName), StandardCharsets.US_ASCII.toString());
        if ((fieldValue != null) && (fieldValue.length() > 0)) {
            fields.put(fieldName, fieldValue);
        }
    }

    String vnp_SecureHash = request.getParameter("vnp_SecureHash");
    if (fields.containsKey("vnp_SecureHashType")) {
        fields.remove("vnp_SecureHashType");
    }
    if (fields.containsKey("vnp_SecureHash")) {
        fields.remove("vnp_SecureHash");
    }
    String signValue = Config.hashAllFields(fields);

%>
<!--Begin display -->
<div class="container">
    <div class="header clearfix">
        <h3 class="text-muted">VNPAY RESPONSE</h3>
    </div>
    <div class="table-responsive">
        <div class="form-group">
            <label>TransId:</label>
            <label><%=request.getParameter("vnp_TxnRef")%>
            </label>
        </div>
        <div class="form-group">
            <label>Amount:</label>
            <label><%=request.getParameter("vnp_Amount")%>
            </label>
        </div>
        <div class="form-group">
            <label>Order info:</label>
            <label><%=request.getParameter("vnp_OrderInfo")%>
            </label>
        </div>
        <div class="form-group">
            <label>Response Code (vnp_ResponseCode):</label>
            <label><%=request.getParameter("vnp_ResponseCode")%>
            </label>
        </div>
        <div class="form-group">
            <label>VNPAY TransId:</label>
            <label><%=request.getParameter("vnp_TransactionNo")%>
            </label>
        </div>
        <div class="form-group">
            <label>Bank Code:</label>
            <label><%=request.getParameter("vnp_BankCode")%>
            </label>
        </div>
        <div class="form-group">
            <label>Pay Date:</label>
            <label><%=request.getParameter("vnp_PayDate")%>
            </label>
        </div>
        <div class="form-group">
            <label>Payment Status:</label>
            <input type="hidden" name="transaction__status" value="<%=request.getParameter("vnp_TransactionStatus")%>">
            <label>
                <%
                    if (signValue.equals(vnp_SecureHash)) {
                        if ("00".equals(request.getParameter("vnp_TransactionStatus"))) {
                            request.setAttribute("orderStatus", "paid");
                            request.setAttribute("orderId", request.getParameter("vnp_TransactionNo"));
                            request.getRequestDispatcher("").forward(request, response);
                        } else {
                            request.setAttribute("orderStatus", "error");
                            request.getRequestDispatcher("").forward(request, response);
                        }
                    } else {
                        request.setAttribute("orderStatus", "error");
                        request.getRequestDispatcher("").forward(request, response);
                    }
                %></label>
        </div>
    </div>
    <p>
        &nbsp;
    </p>
    <footer class="footer">
        <p>&copy; VNPAY 2021</p>
    </footer>
</div>
</body>
</html>
