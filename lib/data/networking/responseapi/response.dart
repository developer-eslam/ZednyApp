// in this file will be add response data
// case in loading data
// case data is completed
// case data not load

enum Status { loadingData, completeData, errorData }

class Response<T> {
  Status status;
  T data;
  String message;

  Response.loading(this.message) : status = Status.loadingData;
  Response.completed(this.data) : status = Status.completeData;
  Response.error(this.message) : status = Status.errorData;

  @override
  String toString() {
    return "Status : $status  \n Message : $message  \n Data : $data";
  }
}
