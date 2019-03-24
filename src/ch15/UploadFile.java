package ch15;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
//import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadFile
 */
@WebServlet("/upload.do")
public class UploadFile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadFile() {
        super();
        System.out.println("UploadFile ������");
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("UploadFile : doPost() ȣ���");

        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");
		String encoding = "utf-8";
		File strUploadDir = new File("C:\\temp");
		DiskFileItemFactory factory = new DiskFileItemFactory();
		factory.setRepository(strUploadDir);
		factory.setSizeThreshold(1024 * 1024); // Max file size ; 1MB
		PrintWriter out = response.getWriter();

		ServletFileUpload upload = new ServletFileUpload(factory);
		out.println("<h1>���� ���ε� �Ϸ� / �ٿ�ε� ����</h1>");
		out.println("���� �ٿ�ε� ��û<br /><hr>");
		try {
			List<FileItem> fileItems = upload.parseRequest(request);
//			for (int i = 0; i < fileItems.size(); i++) {
//				FileItem fileItem = fileItems.get(i);
			for (FileItem fileItem: fileItems) {

				if (fileItem.isFormField()) {
					System.out.println(fileItem.getFieldName() + "=" + fileItem.getString(encoding));
				} else {
					System.out.println("�Ķ���͸� : " + fileItem.getFieldName());
					System.out.println("���ϸ� : " + fileItem.getName());
					System.out.println("����ũ�� : " + fileItem.getSize() + "bytes");

					out.println("<img src=\"/myShop/download.do?fileName=" + fileItem.getName() + "\" /><br />");
					out.println("<a href=\"/myShop/download.do?fileName=" + fileItem.getName() + "\">�̹��� �ٿ�ε�</a><hr />");
					if (fileItem.getSize() > 0) {
						int idx = fileItem.getName().lastIndexOf("\\");
						if (idx == -1) {
							idx = fileItem.getName().lastIndexOf("/");
						}
						String fileName = fileItem.getName().substring(idx + 1);
						File uploadFile = new File(strUploadDir + "\\" + fileName);
						fileItem.write(uploadFile);
					} // end if
				} // end if
			} // end for
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
