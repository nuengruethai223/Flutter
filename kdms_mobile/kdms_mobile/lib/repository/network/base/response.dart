class APIResponse<T> {
  // extends Response<T>
  APIStatus status;
  T data;
  String message;
  int statusCode;
  bool isComplete;

  APIResponse.loading(this.message) : status = APIStatus.loading;

  APIResponse.completed(
    this.data, {
    this.message,
  }) {
    status = APIStatus.completed;
    isComplete = true;
    statusCode = 200;
  }

  APIResponse.error(
    this.message, {
    this.data,
    this.statusCode = 500,
  })  : status = APIStatus.error,
        isComplete = false;

  APIResponse({
    this.status,
    this.data,
    this.message,
    this.statusCode = 200,
    this.isComplete = false,
  });

  bool get hasData => data != null;

  @override
  String toString() {
    return "Status : $status \n Message : $message \n Data : $data";
  }
}

enum APIStatus { loading, completed, error }
