# data-science-hw2
## 作業資訊
資工四 張世澤
## 如何使用
進入*服務連結*（在繳交作業中有附）後，請把[run.ipynb](run.ipynb)上傳到Jupyter上（我已經上傳好了可以直接點開）。

然後開啟Jupyter的Terminal執行下列指令（建議不要執行run.ipynb裡面的mlflow指令，因為會有延遲）：

```
mlflow server -p 5050 --host 0.0.0.0
```

接著可以看MLFlow的監控畫面：[MLFlow Server](http://35.184.35.51:5050/)

然後就可以執行run.ipynb的程式碼。