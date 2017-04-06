package hic.system.common.dto;

public class ModelView<T> {

	private String status;
	private String success;
	private String erro;
	private String token;
	private T data;

	public ModelView() {

	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSuccess() {
		return success;
	}

	public void setSuccess(String success) {
		this.success = success;
	}

	public String getErro() {
		return erro;
	}

	public void setErro(String erro) {
		this.erro = erro;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public T getData() {
		return data;
	}

	public void setData(T data) {
		this.data = data;
	}

	public ModelView(String status, String success, String erro, String token,
			T data) {
		super();
		this.status = status;
		this.success = success;
		this.erro = erro;
		this.token = token;
		this.data = data;
	}

}
