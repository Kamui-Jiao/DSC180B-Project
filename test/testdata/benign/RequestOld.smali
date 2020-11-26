.class public Lcom/leanplum/internal/RequestOld;
.super Ljava/lang/Object;
.source "RequestOld.java"

# interfaces
.implements Lcom/leanplum/internal/Requesting;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;,
        Lcom/leanplum/internal/RequestOld$NoPendingDownloadsCallback;,
        Lcom/leanplum/internal/RequestOld$ErrorCallback;,
        Lcom/leanplum/internal/RequestOld$ResponseCallback;
    }
.end annotation


# static fields
.field private static final DEVELOPMENT_MAX_DELAY_MS:J = 0x1388L

.field private static final DEVELOPMENT_MIN_DELAY_MS:J = 0x64L

.field static final LEANPLUM:Ljava/lang/String; = "__leanplum__"

.field static final MAX_EVENTS_PER_API_CALL:I

.field private static final PRODUCTION_DELAY:J = 0xea60L

.field static final UUID_KEY:Ljava/lang/String; = "uuid"

.field private static accessKey:Ljava/lang/String;

.field private static appId:Ljava/lang/String;

.field private static deviceId:Ljava/lang/String;

.field private static final eventCallbackManager:Lcom/leanplum/internal/LeanplumEventCallbackManager;

.field private static final fileTransferStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final fileUploadProgress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private static fileUploadProgressString:Ljava/lang/String;

.field private static final fileUploadSize:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/io/File;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static lastSendTimeMs:J

.field private static localErrors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static noPendingDownloadsBlock:Lcom/leanplum/internal/RequestOld$NoPendingDownloadsCallback;

.field private static pendingDownloads:I

.field private static token:Ljava/lang/String;

.field private static final uploadFileLock:Ljava/lang/Object;

.field private static userId:Ljava/lang/String;


# instance fields
.field private final apiMethod:Ljava/lang/String;

.field private error:Lcom/leanplum/internal/RequestOld$ErrorCallback;

.field private final httpMethod:Ljava/lang/String;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:Ljava/lang/String;

.field private response:Lcom/leanplum/internal/RequestOld$ResponseCallback;

.field private sent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/leanplum/internal/LeanplumEventCallbackManager;

    invoke-direct {v0}, Lcom/leanplum/internal/LeanplumEventCallbackManager;-><init>()V

    sput-object v0, Lcom/leanplum/internal/RequestOld;->eventCallbackManager:Lcom/leanplum/internal/LeanplumEventCallbackManager;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/internal/RequestOld;->fileTransferStatus:Ljava/util/Map;

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcom/leanplum/internal/RequestOld;->token:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/internal/RequestOld;->fileUploadSize:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/leanplum/internal/RequestOld;->fileUploadProgress:Ljava/util/Map;

    const-string v0, ""

    .line 6
    sput-object v0, Lcom/leanplum/internal/RequestOld;->fileUploadProgressString:Ljava/lang/String;

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/leanplum/internal/RequestOld;->uploadFileLock:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/leanplum/internal/RequestOld;->localErrors:Ljava/util/List;

    .line 9
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x2710

    .line 10
    sput v0, Lcom/leanplum/internal/RequestOld;->MAX_EVENTS_PER_API_CALL:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/internal/RequestOld;->requestId:Ljava/lang/String;

    .line 3
    iput-object p1, p0, Lcom/leanplum/internal/RequestOld;->httpMethod:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/leanplum/internal/RequestOld;->apiMethod:Ljava/lang/String;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    :goto_0
    iput-object p3, p0, Lcom/leanplum/internal/RequestOld;->params:Ljava/util/Map;

    const-string p1, "log"

    .line 6
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/leanplum/internal/LeanplumEventDataManager;->sharedInstance()Lcom/leanplum/internal/LeanplumEventDataManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leanplum/internal/LeanplumEventDataManager;->willSendErrorLogs()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    sget-object p1, Lcom/leanplum/internal/RequestOld;->localErrors:Ljava/util/List;

    invoke-virtual {p0}, Lcom/leanplum/internal/RequestOld;->createArgsDictionary()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ResponseCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/leanplum/internal/RequestOld;->response:Lcom/leanplum/internal/RequestOld$ResponseCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ErrorCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/leanplum/internal/RequestOld;->error:Lcom/leanplum/internal/RequestOld$ErrorCallback;

    return-object p0
.end method

.method static synthetic access$200()Lcom/leanplum/internal/LeanplumEventCallbackManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/leanplum/internal/RequestOld;->eventCallbackManager:Lcom/leanplum/internal/LeanplumEventCallbackManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/leanplum/internal/RequestOld;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/leanplum/internal/RequestOld;->sendIfDelayedHelper()V

    return-void
.end method

.method static synthetic access$400(Lcom/leanplum/internal/RequestOld;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/leanplum/internal/RequestOld;->sendRequests()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/leanplum/internal/RequestOld;->uploadFileLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/leanplum/internal/RequestOld;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/leanplum/internal/RequestOld;->httpMethod:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/leanplum/internal/RequestOld;->fileUploadProgress:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$800()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/leanplum/internal/RequestOld;->printUploadProgress()V

    return-void
.end method

.method static synthetic access$900(Lcom/leanplum/internal/RequestOld;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/leanplum/internal/RequestOld;->downloadHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public static appId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/leanplum/internal/RequestOld;->appId:Ljava/lang/String;

    return-object v0
.end method

.method private static attachApiKeys(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/leanplum/internal/RequestOld;->appId:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    sget-object v2, Lcom/leanplum/internal/RequestOld;->accessKey:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "appId"

    .line 2
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/leanplum/internal/RequestOld;->accessKey:Ljava/lang/String;

    const-string v2, "clientKey"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/leanplum/internal/Constants;->CLIENT:Ljava/lang/String;

    const-string v2, "client"

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    :goto_0
    new-array p0, v1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "API keys are not set. Please use Leanplum.setAppIdForDevelopmentMode or Leanplum.setAppIdForProductionMode."

    aput-object v1, p0, v0

    .line 5
    invoke-static {p0}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    return v0
.end method

.method static deleteSentRequests(I)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    const-class v0, Lcom/leanplum/internal/RequestOld;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/leanplum/internal/LeanplumEventDataManager;->sharedInstance()Lcom/leanplum/internal/LeanplumEventDataManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/leanplum/internal/LeanplumEventDataManager;->deleteEvents(I)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static deviceId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/leanplum/internal/RequestOld;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method private downloadHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p4, :cond_0

    .line 1
    :try_start_0
    iget-object v7, p0, Lcom/leanplum/internal/RequestOld;->httpMethod:Ljava/lang/String;

    sget-boolean v8, Lcom/leanplum/internal/Constants;->API_SSL:Z

    sget v9, Lcom/leanplum/internal/Constants;->NETWORK_TIMEOUT_SECONDS_FOR_DOWNLOADS:I

    move-object v4, p1

    move-object v5, p2

    move-object v6, p5

    invoke-static/range {v4 .. v9}, Lcom/leanplum/internal/Util;->operation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZI)Ljava/net/HttpURLConnection;

    move-result-object p2

    goto :goto_0

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/leanplum/internal/RequestOld;->httpMethod:Ljava/lang/String;

    const-string p5, "https://"

    invoke-virtual {p4, p5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p5

    sget v4, Lcom/leanplum/internal/Constants;->NETWORK_TIMEOUT_SECONDS_FOR_DOWNLOADS:I

    invoke-static {p4, p2, p5, v4}, Lcom/leanplum/internal/Util;->createHttpUrlConnection(Ljava/lang/String;Ljava/lang/String;ZI)Ljava/net/HttpURLConnection;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    :try_start_2
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->connect()V

    .line 5
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_5

    .line 6
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    move-object v4, p3

    .line 7
    :goto_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 8
    invoke-virtual {p1, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 9
    :cond_1
    :goto_2
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 10
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/leanplum/internal/FileManager;->fileRelativeToDocuments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v5

    if-nez v5, :cond_1

    new-array v5, v1, [Ljava/lang/Object;

    const-string v6, "Failed to create directory: "

    aput-object v6, v5, v0

    aput-object v4, v5, v3

    .line 12
    invoke-static {v5}, Lcom/leanplum/internal/Log;->w([Ljava/lang/Object;)V

    goto :goto_2

    .line 13
    :cond_2
    new-instance p1, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    .line 14
    invoke-static {p3}, Lcom/leanplum/internal/FileManager;->fileRelativeToDocuments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 15
    invoke-static {p2, p1}, Lcom/leanplum/internal/Util;->saveResponse(Ljava/net/URLConnection;Ljava/io/OutputStream;)V

    .line 16
    sget p1, Lcom/leanplum/internal/RequestOld;->pendingDownloads:I

    sub-int/2addr p1, v3

    sput p1, Lcom/leanplum/internal/RequestOld;->pendingDownloads:I

    .line 17
    iget-object p1, p0, Lcom/leanplum/internal/RequestOld;->response:Lcom/leanplum/internal/RequestOld$ResponseCallback;

    if-eqz p1, :cond_3

    .line 18
    iget-object p1, p0, Lcom/leanplum/internal/RequestOld;->response:Lcom/leanplum/internal/RequestOld$ResponseCallback;

    invoke-interface {p1, v2}, Lcom/leanplum/internal/RequestOld$ResponseCallback;->response(Lorg/json/JSONObject;)V

    .line 19
    :cond_3
    sget p1, Lcom/leanplum/internal/RequestOld;->pendingDownloads:I

    if-nez p1, :cond_4

    sget-object p1, Lcom/leanplum/internal/RequestOld;->noPendingDownloadsBlock:Lcom/leanplum/internal/RequestOld$NoPendingDownloadsCallback;

    if-eqz p1, :cond_4

    .line 20
    sget-object p1, Lcom/leanplum/internal/RequestOld;->noPendingDownloadsBlock:Lcom/leanplum/internal/RequestOld$NoPendingDownloadsCallback;

    invoke-interface {p1}, Lcom/leanplum/internal/RequestOld$NoPendingDownloadsCallback;->noPendingDownloads()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21
    :cond_4
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_5

    .line 22
    :cond_5
    :try_start_3
    new-instance v2, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Leanplum: Error sending request to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", HTTP status code: "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :catch_1
    move-exception p1

    move-object p5, v2

    :goto_3
    move-object v2, p2

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object p2, v2

    goto :goto_6

    :catch_2
    move-exception p1

    move-object p5, v2

    .line 23
    :goto_4
    :try_start_4
    instance-of p2, p1, Ljava/io/EOFException;

    if-eqz p2, :cond_6

    if-eqz v2, :cond_6

    .line 24
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/net/URL;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    const/4 v5, 0x0

    .line 25
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    move-object v4, p0

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/leanplum/internal/RequestOld;->downloadHelper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 26
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :cond_6
    :try_start_5
    new-array p2, v1, [Ljava/lang/Object;

    .line 27
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Error downloading resource:"

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    aput-object p1, p2, v3

    invoke-static {p2}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    .line 28
    sget p2, Lcom/leanplum/internal/RequestOld;->pendingDownloads:I

    sub-int/2addr p2, v3

    sput p2, Lcom/leanplum/internal/RequestOld;->pendingDownloads:I

    .line 29
    iget-object p2, p0, Lcom/leanplum/internal/RequestOld;->error:Lcom/leanplum/internal/RequestOld$ErrorCallback;

    if-eqz p2, :cond_7

    .line 30
    iget-object p2, p0, Lcom/leanplum/internal/RequestOld;->error:Lcom/leanplum/internal/RequestOld$ErrorCallback;

    invoke-interface {p2, p1}, Lcom/leanplum/internal/RequestOld$ErrorCallback;->error(Ljava/lang/Exception;)V

    .line 31
    :cond_7
    sget p1, Lcom/leanplum/internal/RequestOld;->pendingDownloads:I

    if-nez p1, :cond_8

    sget-object p1, Lcom/leanplum/internal/RequestOld;->noPendingDownloadsBlock:Lcom/leanplum/internal/RequestOld$NoPendingDownloadsCallback;

    if-eqz p1, :cond_8

    .line 32
    sget-object p1, Lcom/leanplum/internal/RequestOld;->noPendingDownloadsBlock:Lcom/leanplum/internal/RequestOld$NoPendingDownloadsCallback;

    invoke-interface {p1}, Lcom/leanplum/internal/RequestOld$NoPendingDownloadsCallback;->noPendingDownloads()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_8
    if-eqz v2, :cond_9

    .line 33
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_9
    :goto_5
    return-void

    :goto_6
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 34
    :cond_a
    throw p1
.end method

.method public static get(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/RequestOld;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/RequestOld;"
        }
    .end annotation

    const-string v0, "log"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/leanplum/internal/Log$LeanplumLogType;->DEBUG:Lcom/leanplum/internal/Log$LeanplumLogType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/leanplum/internal/Log$LeanplumLogType;->VERBOSE:Lcom/leanplum/internal/Log$LeanplumLogType;

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Will call API method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with arguments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leanplum/internal/Log;->log(Lcom/leanplum/internal/Log$LeanplumLogType;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v0

    const-string v1, "get_request"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/leanplum/internal/RequestFactory;->getInstance()Lcom/leanplum/internal/RequestFactory;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1, p0, p1}, Lcom/leanplum/internal/RequestFactory;->createRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/RequestOld;

    move-result-object p0

    return-object p0
.end method

.method public static getReadableErrorMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "App not found"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    sput-boolean v1, Lcom/leanplum/internal/Constants;->isInPermanentFailureState:Z

    const-string p0, "No app matching the provided app ID was found."

    goto :goto_1

    :cond_1
    const-string v0, "Invalid access key"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    sput-boolean v1, Lcom/leanplum/internal/Constants;->isInPermanentFailureState:Z

    const-string p0, "The access key you provided is not valid for this app."

    goto :goto_1

    :cond_2
    const-string v0, "Development mode requested but not permitted"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    sput-boolean v1, Lcom/leanplum/internal/Constants;->isInPermanentFailureState:Z

    const-string p0, "A call to Leanplum.setAppIdForDevelopmentMode with your production key was made, which is not permitted."

    goto :goto_1

    :cond_3
    const-string v0, "API error: "

    .line 8
    invoke-static {v0, p0}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline13(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    :goto_0
    const-string p0, "API error"

    :goto_1
    return-object p0
.end method

.method private getRequestsWithEncodedString()Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;
    .locals 2

    .line 1
    sget-object v0, Lcom/leanplum/internal/RequestOld;->localErrors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/leanplum/internal/RequestOld;->getRequestsWithEncodedStringForErrors()Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/leanplum/internal/RequestOld;->getRequestsWithEncodedStringStoredRequests(D)Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getRequestsWithEncodedStringForErrors()Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3
    sget-object v2, Lcom/leanplum/internal/RequestOld;->localErrors:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    const-string v4, "uuid"

    .line 4
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {v0}, Lcom/leanplum/internal/RequestOld;->jsonEncodeRequests(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;

    invoke-direct {v2}, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;-><init>()V

    .line 8
    iput-object v0, v2, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;->unsentRequests:Ljava/util/List;

    .line 9
    iput-object v0, v2, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;->requestsToSend:Ljava/util/List;

    .line 10
    iput-object v1, v2, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;->jsonEncodedString:Ljava/lang/String;

    return-object v2
.end method

.method public static getResponseError(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v0

    const-string v1, "get_response_error"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "error"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    const-string v1, "message"

    .line 3
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Could not parse JSON response."

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 4
    invoke-static {v1}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getResponseForId(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "response"

    .line 1
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "reqId"

    .line 4
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Could not get response for id: "

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object p1, v2, v1

    const/4 p1, 0x2

    aput-object p0, v2, p1

    .line 6
    invoke-static {v2}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getSizeAsString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x400

    if-ge p0, v0, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " B"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/high16 v0, 0x100000

    if-ge p0, v0, :cond_1

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 p0, p0, 0xa

    const-string v1, " KB"

    invoke-static {v0, p0, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline16(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    shr-int/lit8 p0, p0, 0x14

    const-string v1, " MB"

    invoke-static {v0, p0, v1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline16(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isResponseSuccess(Lorg/json/JSONObject;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v0

    const-string v1, "is_response_success"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string v1, "success"

    .line 2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Could not parse JSON response."

    aput-object v2, v1, v0

    const/4 v2, 0x1

    aput-object p0, v1, v2

    .line 3
    invoke-static {v1}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    return v0
.end method

.method protected static jsonEncodeRequests(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "data"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {v0}, Lcom/leanplum/internal/JsonConverter;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadToken()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "__leanplum__"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "__leanplum_token"

    const/4 v2, 0x0

    .line 3
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {v0}, Lcom/leanplum/internal/RequestOld;->setToken(Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v0

    const-string v1, "load_token"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method public static numPendingDownloads()I
    .locals 1

    .line 1
    sget v0, Lcom/leanplum/internal/RequestOld;->pendingDownloads:I

    return v0
.end method

.method public static onNoPendingDownloads(Lcom/leanplum/internal/RequestOld$NoPendingDownloadsCallback;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/leanplum/internal/RequestOld;->noPendingDownloadsBlock:Lcom/leanplum/internal/RequestOld$NoPendingDownloadsCallback;

    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/RequestOld;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/RequestOld;"
        }
    .end annotation

    const-string v0, "log"

    .line 1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/leanplum/internal/Log$LeanplumLogType;->DEBUG:Lcom/leanplum/internal/Log$LeanplumLogType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/leanplum/internal/Log$LeanplumLogType;->VERBOSE:Lcom/leanplum/internal/Log$LeanplumLogType;

    .line 2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Will call API method "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with arguments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leanplum/internal/Log;->log(Lcom/leanplum/internal/Log$LeanplumLogType;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v0

    const-string v1, "post_request"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/leanplum/internal/RequestFactory;->getInstance()Lcom/leanplum/internal/RequestFactory;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1, p0, p1}, Lcom/leanplum/internal/RequestFactory;->createRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/RequestOld;

    move-result-object p0

    return-object p0
.end method

.method private static printUploadProgress()V
    .locals 13

    .line 1
    sget-object v0, Lcom/leanplum/internal/RequestOld;->fileUploadSize:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 2
    sget-object v1, Lcom/leanplum/internal/RequestOld;->fileUploadSize:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 5
    sget-object v6, Lcom/leanplum/internal/RequestOld;->fileUploadProgress:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v6, v10

    if-nez v12, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    long-to-double v10, v8

    mul-double v10, v10, v6

    double-to-int v6, v10

    add-int/2addr v4, v6

    int-to-long v5, v5

    add-long/2addr v5, v8

    long-to-int v5, v5

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Uploading resources. "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " files completed; "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-static {v4}, Lcom/leanplum/internal/RequestOld;->getSizeAsString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/leanplum/internal/RequestOld;->getSizeAsString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, " transferred."

    invoke-static {v1, v0, v3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline19(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    sget-object v1, Lcom/leanplum/internal/RequestOld;->fileUploadProgressString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    sput-object v0, Lcom/leanplum/internal/RequestOld;->fileUploadProgressString:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    .line 10
    invoke-static {v1}, Lcom/leanplum/internal/Log;->i([Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method private static removeIrrelevantBackgroundStartRequests(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    add-int/lit8 v4, v1, -0x1

    if-ge v2, v4, :cond_0

    add-int/lit8 v4, v2, 0x1

    .line 4
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    const-string v5, "action"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v6, "start"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    invoke-virtual {v4}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "background"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private saveRequestForLater(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/leanplum/internal/OperationQueue;->sharedInstance()Lcom/leanplum/internal/OperationQueue;

    move-result-object v0

    new-instance v1, Lcom/leanplum/internal/RequestOld$1;

    invoke-direct {v1, p0, p1}, Lcom/leanplum/internal/RequestOld$1;-><init>(Lcom/leanplum/internal/RequestOld;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/OperationQueue;->addOperation(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static saveToken()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "__leanplum__"

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/leanplum/internal/RequestOld;->token()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__leanplum_token"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-static {v0}, Lcom/leanplum/utils/SharedPreferencesUtil;->commitChanges(Landroid/content/SharedPreferences$Editor;)V

    return-void
.end method

.method private sendIfDelayedHelper()V
    .locals 7

    .line 1
    sget-boolean v0, Lcom/leanplum/internal/Constants;->isDevelopmentModeEnabled:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/leanplum/internal/RequestOld;->send()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    sget-wide v2, Lcom/leanplum/internal/RequestOld;->lastSendTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/leanplum/internal/RequestOld;->sendIfConnected()V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendNow()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/leanplum/internal/Constants;->isTestMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/leanplum/internal/RequestOld;->sendEventually()V

    .line 3
    sget-object v0, Lcom/leanplum/internal/RequestOld;->appId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Cannot send request. appId is not set."

    aput-object v2, v0, v1

    .line 4
    invoke-static {v0}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    sget-object v0, Lcom/leanplum/internal/RequestOld;->accessKey:Ljava/lang/String;

    if-nez v0, :cond_2

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "Cannot send request. accessKey is not set."

    aput-object v2, v0, v1

    .line 6
    invoke-static {v0}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v0

    const-string v1, "send_now"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcom/leanplum/internal/OperationQueue;->sharedInstance()Lcom/leanplum/internal/OperationQueue;

    move-result-object v0

    new-instance v1, Lcom/leanplum/internal/RequestOld$4;

    invoke-direct {v1, p0}, Lcom/leanplum/internal/RequestOld$4;-><init>(Lcom/leanplum/internal/RequestOld;)V

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/OperationQueue;->addOperation(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendRequests()V
    .locals 11

    const-string v0, "\n"

    .line 1
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/leanplum/internal/CountAggregator;->sendAllCounts()V

    .line 2
    invoke-direct {p0}, Lcom/leanplum/internal/RequestOld;->getRequestsWithEncodedString()Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;

    move-result-object v1

    .line 3
    iget-object v2, v1, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;->unsentRequests:Ljava/util/List;

    .line 4
    iget-object v3, v1, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;->requestsToSend:Ljava/util/List;

    .line 5
    iget-object v1, v1, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;->jsonEncodedString:Ljava/lang/String;

    .line 6
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 7
    :cond_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-static {v6}, Lcom/leanplum/internal/RequestOld;->attachApiKeys(Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    const-string v3, "data"

    .line 9
    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Lcom/leanplum/internal/Constants;->LEANPLUM_VERSION:Ljava/lang/String;

    const-string v3, "sdkVersion"

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "action"

    const-string v3, "multi"

    .line 11
    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const-string v3, "time"

    invoke-interface {v6, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v10, 0x0

    .line 13
    :try_start_0
    sget-object v4, Lcom/leanplum/internal/Constants;->API_HOST_NAME:Ljava/lang/String;

    sget-object v5, Lcom/leanplum/internal/Constants;->API_SERVLET:Ljava/lang/String;

    iget-object v7, p0, Lcom/leanplum/internal/RequestOld;->httpMethod:Ljava/lang/String;

    sget-boolean v8, Lcom/leanplum/internal/Constants;->API_SSL:Z

    sget v9, Lcom/leanplum/internal/Constants;->NETWORK_TIMEOUT_SECONDS:I

    invoke-static/range {v4 .. v9}, Lcom/leanplum/internal/Util;->operation(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ZI)Ljava/net/HttpURLConnection;

    move-result-object v4
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    invoke-static {v4}, Lcom/leanplum/internal/Util;->getJsonResponse(Ljava/net/HttpURLConnection;)Lorg/json/JSONObject;

    move-result-object v5

    .line 15
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-lt v6, v7, :cond_2

    const/16 v7, 0x12b

    if-gt v6, v7, :cond_2

    .line 16
    invoke-virtual {p0, v5, v10}, Lcom/leanplum/internal/RequestOld;->parseResponseBody(Lorg/json/JSONObject;Ljava/lang/Exception;)V

    .line 17
    sget-object v5, Lcom/leanplum/internal/RequestOld;->localErrors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Lcom/leanplum/internal/RequestOld;->deleteSentRequests(I)V

    .line 19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    sget v6, Lcom/leanplum/internal/RequestOld;->MAX_EVENTS_PER_API_CALL:I

    if-ne v5, v6, :cond_4

    .line 20
    invoke-direct {p0}, Lcom/leanplum/internal/RequestOld;->sendRequests()V

    goto :goto_0

    .line 21
    :cond_2
    new-instance v7, Ljava/lang/Exception;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "HTTP error "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v8, -0x1

    if-eq v6, v8, :cond_4

    const/16 v8, 0x198

    if-eq v6, v8, :cond_4

    const/16 v8, 0x1f4

    if-lt v6, v8, :cond_3

    const/16 v8, 0x257

    if-le v6, v8, :cond_4

    .line 22
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lcom/leanplum/internal/RequestOld;->deleteSentRequests(I)V

    .line 23
    invoke-virtual {p0, v5, v7}, Lcom/leanplum/internal/RequestOld;->parseResponseBody(Lorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 24
    :cond_4
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_4

    :catch_0
    move-exception v2

    move-object v10, v4

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v10

    goto :goto_3

    :catch_2
    move-exception v2

    :goto_1
    :try_start_3
    new-array v3, v3, [Ljava/lang/Object;

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to send request: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/leanplum/internal/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v10, :cond_6

    .line 26
    :try_start_4
    invoke-virtual {v10}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catch_3
    move-exception v5

    move-object v4, v10

    :goto_2
    :try_start_5
    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing JSON response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/leanplum/internal/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    .line 28
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/leanplum/internal/RequestOld;->deleteSentRequests(I)V

    .line 29
    invoke-virtual {p0, v10, v5}, Lcom/leanplum/internal/RequestOld;->parseResponseBody(Lorg/json/JSONObject;Ljava/lang/Exception;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v4, :cond_6

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v4, :cond_5

    .line 30
    :try_start_6
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 31
    :cond_5
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/leanplum/internal/Util;->handleException(Ljava/lang/Throwable;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public static setAppId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/leanplum/internal/RequestOld;->appId:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/leanplum/internal/RequestOld;->accessKey:Ljava/lang/String;

    .line 5
    :cond_1
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object p0

    const-string p1, "set_app_id"

    invoke-virtual {p0, p1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method public static setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/leanplum/internal/RequestOld;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public static setToken(Ljava/lang/String;)V
    .locals 1

    .line 1
    sput-object p0, Lcom/leanplum/internal/RequestOld;->token:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object p0

    const-string v0, "set_token"

    invoke-virtual {p0, v0}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method public static setUserId(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/leanplum/internal/RequestOld;->userId:Ljava/lang/String;

    return-void
.end method

.method public static token()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/leanplum/internal/RequestOld;->token:Ljava/lang/String;

    return-object v0
.end method

.method public static userId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/leanplum/internal/RequestOld;->userId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public createArgsDictionary()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    sget-object v1, Lcom/leanplum/internal/RequestOld;->deviceId:Ljava/lang/String;

    const-string v2, "deviceId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/leanplum/internal/RequestOld;->userId:Ljava/lang/String;

    const-string v2, "userId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/leanplum/internal/RequestOld;->apiMethod:Ljava/lang/String;

    const-string v2, "action"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lcom/leanplum/internal/Constants;->LEANPLUM_VERSION:Ljava/lang/String;

    const-string v2, "sdkVersion"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-boolean v1, Lcom/leanplum/internal/Constants;->isDevelopmentModeEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "devMode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lcom/leanplum/internal/RequestOld;->requestId:Ljava/lang/String;

    const-string v2, "reqId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/leanplum/internal/RequestOld;->token:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "token"

    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/leanplum/internal/RequestOld;->params:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method downloadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/leanplum/internal/Constants;->isTestMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Lcom/leanplum/internal/RequestOld;->fileTransferStatus:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    sget v0, Lcom/leanplum/internal/RequestOld;->pendingDownloads:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sput v0, Lcom/leanplum/internal/RequestOld;->pendingDownloads:I

    new-array v0, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Downloading resource "

    .line 4
    invoke-static {v3, p1}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline13(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v0}, Lcom/leanplum/internal/Log;->i([Ljava/lang/Object;)V

    .line 5
    sget-object v0, Lcom/leanplum/internal/RequestOld;->fileTransferStatus:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/leanplum/internal/RequestOld;->createArgsDictionary()Ljava/util/Map;

    move-result-object v0

    const-string v1, "filename"

    .line 7
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Lcom/leanplum/internal/RequestOld;->attachApiKeys(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v1

    const-string v2, "download_file"

    invoke-virtual {v1, v2}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/leanplum/internal/OperationQueue;->sharedInstance()Lcom/leanplum/internal/OperationQueue;

    move-result-object v1

    new-instance v2, Lcom/leanplum/internal/RequestOld$6;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/leanplum/internal/RequestOld$6;-><init>(Lcom/leanplum/internal/RequestOld;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/leanplum/internal/OperationQueue;->addParallelOperation(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected getRequestsWithEncodedStringStoredRequests(D)Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;

    invoke-direct {v0}, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;-><init>()V

    const-wide v1, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v3, p1, v1

    if-gez v3, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/leanplum/internal/RequestOld;->getUnsentRequests(D)Ljava/util/List;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcom/leanplum/internal/RequestOld;->removeIrrelevantBackgroundStartRequests(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 6
    :goto_0
    invoke-static {v3}, Lcom/leanplum/internal/RequestOld;->jsonEncodeRequests(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 7
    iput-object v1, v0, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;->unsentRequests:Ljava/util/List;

    .line 8
    iput-object v3, v0, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;->requestsToSend:Ljava/util/List;

    .line 9
    iput-object v2, v0, Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;->jsonEncodedString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double p1, p1, v0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/leanplum/internal/RequestOld;->getRequestsWithEncodedStringStoredRequests(D)Lcom/leanplum/internal/RequestOld$RequestsWithEncoding;

    move-result-object p1

    return-object p1
.end method

.method public getUnsentRequests(D)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/leanplum/internal/RequestOld;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/leanplum/internal/RequestOld;->lastSendTimeMs:J

    .line 3
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "__leanplum__"

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 6
    sget v2, Lcom/leanplum/internal/RequestOld;->MAX_EVENTS_PER_API_CALL:I

    int-to-double v2, v2

    mul-double v2, v2, p1

    double-to-int v2, v2

    .line 7
    invoke-static {}, Lcom/leanplum/internal/LeanplumEventDataManager;->sharedInstance()Lcom/leanplum/internal/LeanplumEventDataManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/leanplum/internal/LeanplumEventDataManager;->getEvents(I)Ljava/util/List;

    move-result-object v2

    const-string v3, "__leanplum_uuid"

    .line 8
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-static {v1}, Lcom/leanplum/utils/SharedPreferencesUtil;->commitChanges(Landroid/content/SharedPreferences$Editor;)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, p1, v3

    if-gez v1, :cond_0

    .line 10
    new-instance p1, Lcom/leanplum/internal/RequestOldUtil;

    invoke-direct {p1}, Lcom/leanplum/internal/RequestOldUtil;-><init>()V

    .line 11
    invoke-virtual {p1, v2}, Lcom/leanplum/internal/RequestOldUtil;->setNewBatchUUID(Ljava/util/List;)V

    .line 12
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onError(Lcom/leanplum/internal/RequestOld$ErrorCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/leanplum/internal/RequestOld;->error:Lcom/leanplum/internal/RequestOld$ErrorCallback;

    .line 2
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object p1

    const-string v0, "on_error"

    invoke-virtual {p1, v0}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/leanplum/internal/RequestOld$ResponseCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/leanplum/internal/RequestOld;->response:Lcom/leanplum/internal/RequestOld$ResponseCallback;

    .line 2
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object p1

    const-string v0, "on_response"

    invoke-virtual {p1, v0}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method protected parseResponseBody(Lorg/json/JSONObject;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    const-class v0, Lcom/leanplum/internal/RequestOld;

    monitor-enter v0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    :try_start_0
    sget-object p1, Lcom/leanplum/internal/RequestOld;->eventCallbackManager:Lcom/leanplum/internal/LeanplumEventCallbackManager;

    invoke-virtual {p1, p2}, Lcom/leanplum/internal/LeanplumEventCallbackManager;->invokeAllCallbacksWithError(Ljava/lang/Exception;)V

    .line 3
    monitor-exit v0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 4
    monitor-exit v0

    return-void

    .line 5
    :cond_1
    sget-object p2, Lcom/leanplum/internal/RequestOld;->eventCallbackManager:Lcom/leanplum/internal/LeanplumEventCallbackManager;

    invoke-virtual {p2, p1}, Lcom/leanplum/internal/LeanplumEventCallbackManager;->invokeCallbacks(Lorg/json/JSONObject;)V

    .line 6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/RequestOld;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public send()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/leanplum/internal/RequestOld;->sendEventually()V

    .line 2
    sget-boolean v0, Lcom/leanplum/internal/Constants;->isDevelopmentModeEnabled:Z

    if-eqz v0, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    sget-wide v2, Lcom/leanplum/internal/RequestOld;->lastSendTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    sub-long v4, v0, v2

    const-wide/16 v6, 0x1388

    cmp-long v8, v4, v6

    if-lez v8, :cond_0

    goto :goto_0

    :cond_0
    add-long/2addr v2, v6

    sub-long/2addr v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v2, 0x64

    .line 5
    :goto_1
    invoke-static {}, Lcom/leanplum/internal/OperationQueue;->sharedInstance()Lcom/leanplum/internal/OperationQueue;

    move-result-object v0

    new-instance v1, Lcom/leanplum/internal/RequestOld$2;

    invoke-direct {v1, p0}, Lcom/leanplum/internal/RequestOld$2;-><init>(Lcom/leanplum/internal/RequestOld;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/leanplum/internal/OperationQueue;->addOperationAfterDelay(Ljava/lang/Runnable;J)Z

    .line 6
    :cond_2
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v0

    const-string v1, "send_request"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method public sendEventually()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/leanplum/internal/Constants;->isTestMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/leanplum/internal/LeanplumEventDataManager;->sharedInstance()Lcom/leanplum/internal/LeanplumEventDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/leanplum/internal/LeanplumEventDataManager;->willSendErrorLogs()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/leanplum/internal/RequestOld;->sent:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/leanplum/internal/RequestOld;->sent:Z

    .line 5
    invoke-virtual {p0}, Lcom/leanplum/internal/RequestOld;->createArgsDictionary()Ljava/util/Map;

    move-result-object v0

    .line 6
    invoke-direct {p0, v0}, Lcom/leanplum/internal/RequestOld;->saveRequestForLater(Ljava/util/Map;)V

    .line 7
    :cond_2
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v0

    const-string v1, "send_eventually"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method public sendFilesNow(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/leanplum/internal/Constants;->isTestMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/leanplum/internal/RequestOld;->createArgsDictionary()Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/leanplum/internal/RequestOld;->attachApiKeys(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 4
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 6
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 7
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v6, Lcom/leanplum/internal/RequestOld;->fileTransferStatus:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 9
    :try_start_0
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->available()I

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v7, v7

    goto :goto_1

    :catch_0
    new-array v5, v6, [Ljava/lang/Object;

    const-string v6, "Unable to read file "

    .line 10
    invoke-static {v6, v4}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline13(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v5, v2

    invoke-static {v5}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    goto :goto_2

    .line 11
    :catch_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    .line 12
    :goto_1
    sget-object v9, Lcom/leanplum/internal/RequestOld;->fileTransferStatus:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v9, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    sget-object v4, Lcom/leanplum/internal/RequestOld;->fileUploadSize:Ljava/util/Map;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    sget-object v4, Lcom/leanplum/internal/RequestOld;->fileUploadProgress:Ljava/util/Map;

    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 17
    :cond_5
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object p1

    const-string v2, "send_files_now"

    invoke-virtual {p1, v2}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/leanplum/internal/RequestOld;->printUploadProgress()V

    .line 19
    invoke-static {}, Lcom/leanplum/internal/OperationQueue;->sharedInstance()Lcom/leanplum/internal/OperationQueue;

    move-result-object p1

    new-instance v2, Lcom/leanplum/internal/RequestOld$5;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/leanplum/internal/RequestOld$5;-><init>(Lcom/leanplum/internal/RequestOld;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {p1, v2}, Lcom/leanplum/internal/OperationQueue;->addParallelOperation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendIfConnected()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/leanplum/internal/Util;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/leanplum/internal/RequestOld;->sendNow()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/leanplum/internal/RequestOld;->sendEventually()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Device is offline, will send later"

    aput-object v2, v0, v1

    .line 4
    invoke-static {v0}, Lcom/leanplum/internal/Log;->i([Ljava/lang/Object;)V

    .line 5
    :goto_0
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v0

    const-string v1, "send_if_connected"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method public sendIfDelayed()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/leanplum/internal/RequestOld;->sendEventually()V

    .line 2
    invoke-static {}, Lcom/leanplum/internal/OperationQueue;->sharedInstance()Lcom/leanplum/internal/OperationQueue;

    move-result-object v0

    new-instance v1, Lcom/leanplum/internal/RequestOld$3;

    invoke-direct {v1, p0}, Lcom/leanplum/internal/RequestOld$3;-><init>(Lcom/leanplum/internal/RequestOld;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/leanplum/internal/OperationQueue;->addOperationAfterDelay(Ljava/lang/Runnable;J)Z

    .line 3
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v0

    const-string v1, "send_if_delayed"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method
