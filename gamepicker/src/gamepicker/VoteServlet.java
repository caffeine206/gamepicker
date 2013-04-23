package gamepicker;

import com.google.appengine.api.rdbms.AppEngineDriver;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.http.*;

@SuppressWarnings("serial")

public class VoteServlet extends HttpServlet {
    public void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws IOException {
    	String query = req.getQueryString();
    	String[] params = query.split("&");
    	
        resp.setContentType("text/plain");
        resp.getWriter().println("vote page");
    }
}