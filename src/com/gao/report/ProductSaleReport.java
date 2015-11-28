package com.gao.report;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;
import org.jfree.chart.ChartFactory;
import org.jfree.chart.ChartUtilities;
import org.jfree.chart.JFreeChart;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;

import com.gao.www.util.DB;

/**
 * Servlet implementation class ProductSaleReport
 */
public class ProductSaleReport extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ProductSaleReport() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		JFreeChart chart = ChartFactory.createBarChart3D("productsalereport", "product", "count", createDataset(),
				PlotOrientation.VERTICAL, true, false, false);

		OutputStream os = new FileOutputStream("D:\\j2EEProject\\Shopping\\WebContent\\admin\\images\\report\\productsalereport.jpeg");// ͼƬ���ļ���ʽ�ģ���Ҫ�õ�FileOutputStream���������
		ChartUtilities.writeChartAsJPEG(os,	 chart, 400, 300);
		// ʹ��һ������application�Ĺ����࣬��chartת����JPEG��ʽ��ͼƬ����3�������ǿ�ȣ���4�������Ǹ߶ȡ�
		//response.getWriter().println("success");
		this.getServletContext().getRequestDispatcher("/admin/productsalereport.jsp").forward(request, response);
		os.close();// �ر������
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	// ������״ͼ���ݼ�
	public static CategoryDataset createDataset() {

		DefaultCategoryDataset dataset = new DefaultCategoryDataset();

		Connection connection = DB.getConn();
		String sql = "select p.name name, sum(pcount) count from product p join salesitem on(p.id=salesitem.productid) group by p.id";
		Statement statement = DB.getStat(connection);
		ResultSet resultSet = DB.getRes(statement, sql);

		try {
			while (resultSet.next()) {
				dataset.setValue(resultSet.getInt("count"), "", resultSet.getString("name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return dataset;
	}

}
