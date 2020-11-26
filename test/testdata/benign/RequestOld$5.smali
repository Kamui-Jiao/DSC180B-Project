.class Lcom/leanplum/internal/RequestOld$5;
.super Ljava/lang/Object;
.source "RequestOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leanplum/internal/RequestOld;->sendFilesNow(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leanplum/internal/RequestOld;

.field final synthetic val$dict:Ljava/util/Map;

.field final synthetic val$filesToUpload:Ljava/util/List;

.field final synthetic val$streams:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/leanplum/internal/RequestOld;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/leanplum/internal/RequestOld$5;->this$0:Lcom/leanplum/internal/RequestOld;

    iput-object p2, p0, Lcom/leanplum/internal/RequestOld$5;->val$filesToUpload:Ljava/util/List;

    iput-object p3, p0, Lcom/leanplum/internal/RequestOld$5;->val$streams:Ljava/util/List;

    iput-object p4, p0, Lcom/leanplum/internal/RequestOld$5;->val$dict:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 1
    invoke-static {}, Lcom/leanplum/internal/RequestOld;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    const-string v5, "file"

    .line 2
    iget-object v6, p0, Lcom/leanplum/internal/RequestOld$5;->val$filesToUpload:Ljava/util/List;

    iget-object v7, p0, Lcom/leanplum/internal/RequestOld$5;->val$streams:Ljava/util/List;

    sget-object v8, Lcom/leanplum/internal/Constants;->API_HOST_NAME:Ljava/lang/String;

    sget-object v9, Lcom/leanplum/internal/Constants;->API_SERVLET:Ljava/lang/String;

    iget-object v10, p0, Lcom/leanplum/internal/RequestOld$5;->val$dict:Ljava/util/Map;

    iget-object v11, p0, Lcom/leanplum/internal/RequestOld$5;->this$0:Lcom/leanplum/internal/RequestOld;

    .line 3
    invoke-static {v11}, Lcom/leanplum/internal/RequestOld;->access$600(Lcom/leanplum/internal/RequestOld;)Ljava/lang/String;

    move-result-object v11

    sget-boolean v12, Lcom/leanplum/internal/Constants;->API_SSL:Z

    const/16 v13, 0x3c

    .line 4
    invoke-static/range {v5 .. v13}, Lcom/leanplum/internal/Util;->uploadFilesOperation(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZI)Ljava/net/HttpURLConnection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, Lcom/leanplum/internal/Util;->getJsonResponse(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v5

    .line 6
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 7
    iget-object v6, p0, Lcom/leanplum/internal/RequestOld$5;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v6}, Lcom/leanplum/internal/RequestOld;->access$000(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ResponseCallback;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 8
    iget-object v6, p0, Lcom/leanplum/internal/RequestOld$5;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v6}, Lcom/leanplum/internal/RequestOld;->access$000(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ResponseCallback;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/leanplum/internal/RequestOld$ResponseCallback;->response(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance v5, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Leanplum: Error sending request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5

    .line 10
    :cond_1
    iget-object v5, p0, Lcom/leanplum/internal/RequestOld$5;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v5}, Lcom/leanplum/internal/RequestOld;->access$100(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ErrorCallback;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 11
    iget-object v5, p0, Lcom/leanplum/internal/RequestOld$5;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v5}, Lcom/leanplum/internal/RequestOld;->access$100(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ErrorCallback;

    move-result-object v5

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "Leanplum: Unable to read file."

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/leanplum/internal/RequestOld$ErrorCallback;->error(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    if-eqz v1, :cond_6

    .line 12
    :goto_1
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto/16 :goto_4

    :catch_0
    move-exception v5

    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Unable to send file."

    aput-object v6, v2, v3

    aput-object v5, v2, v4

    .line 13
    invoke-static {v2}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    .line 14
    iget-object v2, p0, Lcom/leanplum/internal/RequestOld$5;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v2}, Lcom/leanplum/internal/RequestOld;->access$100(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ErrorCallback;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 15
    iget-object v2, p0, Lcom/leanplum/internal/RequestOld$5;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v2}, Lcom/leanplum/internal/RequestOld;->access$100(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ErrorCallback;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/leanplum/internal/RequestOld$ErrorCallback;->error(Ljava/lang/Exception;)V

    :cond_3
    if-eqz v1, :cond_6

    goto :goto_1

    :catch_1
    move-exception v2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Timeout uploading files. Try again or limit the number of files to upload with parameters to syncResourcesAsync."

    aput-object v5, v4, v3

    .line 16
    invoke-static {v4}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    .line 17
    iget-object v3, p0, Lcom/leanplum/internal/RequestOld$5;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v3}, Lcom/leanplum/internal/RequestOld;->access$100(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ErrorCallback;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 18
    iget-object v3, p0, Lcom/leanplum/internal/RequestOld$5;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v3}, Lcom/leanplum/internal/RequestOld;->access$100(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ErrorCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/leanplum/internal/RequestOld$ErrorCallback;->error(Ljava/lang/Exception;)V

    :cond_4
    if-eqz v1, :cond_6

    goto :goto_1

    :catch_2
    move-exception v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "Unable to convert to JSON."

    aput-object v6, v2, v3

    aput-object v5, v2, v4

    .line 19
    invoke-static {v2}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    .line 20
    iget-object v2, p0, Lcom/leanplum/internal/RequestOld$5;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v2}, Lcom/leanplum/internal/RequestOld;->access$100(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ErrorCallback;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 21
    iget-object v2, p0, Lcom/leanplum/internal/RequestOld$5;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v2}, Lcom/leanplum/internal/RequestOld;->access$100(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ErrorCallback;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/leanplum/internal/RequestOld$ErrorCallback;->error(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    if-eqz v1, :cond_6

    goto :goto_1

    .line 22
    :cond_6
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/leanplum/internal/RequestOld$5;->val$filesToUpload:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 23
    invoke-static {}, Lcom/leanplum/internal/RequestOld;->access$700()Ljava/util/Map;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 24
    :cond_7
    invoke-static {}, Lcom/leanplum/internal/RequestOld;->access$800()V

    .line 25
    monitor-exit v0

    return-void

    :goto_4
    if-eqz v1, :cond_8

    .line 26
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 27
    :cond_8
    throw v2

    :catchall_1
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
