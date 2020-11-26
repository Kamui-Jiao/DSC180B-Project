.class public Lcom/leanplum/internal/RequestFactory;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# static fields
.field private static final API_METHOD_ADVANCE:Ljava/lang/String; = "advance"

.field private static final API_METHOD_DELETE_INBOX_MESSAGE:Ljava/lang/String; = "deleteNewsfeedMessage"

.field private static final API_METHOD_DOWNLOAD_FILE:Ljava/lang/String; = "downloadFile"

.field private static final API_METHOD_GET_INBOX_MESSAGES:Ljava/lang/String; = "getNewsfeedMessages"

.field private static final API_METHOD_GET_VARS:Ljava/lang/String; = "getVars"

.field private static final API_METHOD_GET_VIEW_CONTROLLER_VERSIONS_LIST:Ljava/lang/String; = "getViewControllerVersionsList"

.field private static final API_METHOD_HEARTBEAT:Ljava/lang/String; = "heartbeat"

.field private static final API_METHOD_LOG:Ljava/lang/String; = "log"

.field private static final API_METHOD_MARK_INBOX_MESSAGE_AS_READ:Ljava/lang/String; = "markNewsfeedMessageAsRead"

.field private static final API_METHOD_MULTI:Ljava/lang/String; = "multi"

.field private static final API_METHOD_PAUSE_SESSION:Ljava/lang/String; = "pauseSession"

.field private static final API_METHOD_PAUSE_STATE:Ljava/lang/String; = "pauseState"

.field private static final API_METHOD_REGISTER_FOR_DEVELOPMENT:Ljava/lang/String; = "registerDevice"

.field private static final API_METHOD_RESTART:Ljava/lang/String; = "restart"

.field private static final API_METHOD_RESUME_SESSION:Ljava/lang/String; = "resumeSession"

.field private static final API_METHOD_RESUME_STATE:Ljava/lang/String; = "resumeState"

.field private static final API_METHOD_SAVE_VIEW_CONTROLLER_IMAGE:Ljava/lang/String; = "saveInterfaceImage"

.field private static final API_METHOD_SAVE_VIEW_CONTROLLER_VERSION:Ljava/lang/String; = "saveInterface"

.field private static final API_METHOD_SET_DEVICE_ATTRIBUTES:Ljava/lang/String; = "setDeviceAttributes"

.field private static final API_METHOD_SET_TRAFFIC_SOURCE_INFO:Ljava/lang/String; = "setTrafficSourceInfo"

.field private static final API_METHOD_SET_USER_ATTRIBUTES:Ljava/lang/String; = "setUserAttributes"

.field private static final API_METHOD_SET_VARS:Ljava/lang/String; = "setVars"

.field private static final API_METHOD_START:Ljava/lang/String; = "start"

.field private static final API_METHOD_STOP:Ljava/lang/String; = "stop"

.field private static final API_METHOD_TRACK:Ljava/lang/String; = "track"

.field private static final API_METHOD_UPLOAD_FILE:Ljava/lang/String; = "uploadFile"

.field public static defaultFactory:Lcom/leanplum/internal/RequestFactory;


# instance fields
.field private countAggregator:Lcom/leanplum/internal/CountAggregator;

.field private featureFlagManager:Lcom/leanplum/internal/FeatureFlagManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createGetForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/leanplum/internal/RequestFactory;->shouldReturnLPRequestClass()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/leanplum/internal/Request;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Request;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lcom/leanplum/internal/RequestOld;->get(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/RequestOld;

    move-result-object p1

    return-object p1
.end method

.method private createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/leanplum/internal/RequestFactory;->shouldReturnLPRequestClass()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1, p2}, Lcom/leanplum/internal/Request;->post(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Request;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-static {p1, p2}, Lcom/leanplum/internal/RequestOld;->post(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/RequestOld;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcom/leanplum/internal/RequestFactory;
    .locals 3

    const-class v0, Lcom/leanplum/internal/RequestFactory;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/leanplum/internal/RequestFactory;->defaultFactory:Lcom/leanplum/internal/RequestFactory;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/leanplum/internal/RequestFactory;

    invoke-direct {v1}, Lcom/leanplum/internal/RequestFactory;-><init>()V

    sput-object v1, Lcom/leanplum/internal/RequestFactory;->defaultFactory:Lcom/leanplum/internal/RequestFactory;

    .line 3
    sget-object v1, Lcom/leanplum/internal/RequestFactory;->defaultFactory:Lcom/leanplum/internal/RequestFactory;

    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v2

    iput-object v2, v1, Lcom/leanplum/internal/RequestFactory;->countAggregator:Lcom/leanplum/internal/CountAggregator;

    .line 4
    sget-object v1, Lcom/leanplum/internal/RequestFactory;->defaultFactory:Lcom/leanplum/internal/RequestFactory;

    invoke-static {}, Lcom/leanplum/Leanplum;->featureFlagManager()Lcom/leanplum/internal/FeatureFlagManager;

    move-result-object v2

    iput-object v2, v1, Lcom/leanplum/internal/RequestFactory;->featureFlagManager:Lcom/leanplum/internal/FeatureFlagManager;

    .line 5
    :cond_0
    sget-object v1, Lcom/leanplum/internal/RequestFactory;->defaultFactory:Lcom/leanplum/internal/RequestFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private shouldReturnLPRequestClass()Ljava/lang/Boolean;
    .locals 2

    .line 1
    invoke-static {}, Lcom/leanplum/Leanplum;->featureFlagManager()Lcom/leanplum/internal/FeatureFlagManager;

    move-result-object v0

    invoke-static {}, Lcom/leanplum/Leanplum;->featureFlagManager()Lcom/leanplum/internal/FeatureFlagManager;

    const-string v1, "request_refactor"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/FeatureFlagManager;->isFeatureFlagEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public advanceWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "advance"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public createRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/RequestOld;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/RequestOld;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object v0

    const-string v1, "createRequest"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/leanplum/internal/RequestOld;

    invoke-direct {v0, p1, p2, p3}, Lcom/leanplum/internal/RequestOld;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public deleteNewsfeedMessagesWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "deleteNewsfeedMessage"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public downloadFileWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "downloadFile"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public getNewsfeedMessagesWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "getNewsfeedMessages"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public getVarsWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "getVars"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public getViewControllerVersionsListWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "getViewControllerVersionsList"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public heartbeatWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "heartbeat"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public logWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "log"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public markNewsfeedMessageAsReadWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "markNewsfeedMessageAsRead"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public multiWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "multi"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public pauseSessionWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "pauseSession"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public pauseStateWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "pauseState"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public registerDeviceWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "registerDevice"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public restartWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "restart"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public resumeSessionWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "resumeSession"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public resumeStateWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "resumeState"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public saveInterfaceImageWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "saveInterfaceImage"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public saveInterfaceWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "saveInterface"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceAttributesWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "setDeviceAttributes"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public setTrafficSourceInfoWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "setTrafficSourceInfo"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public setUserAttributesWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "setUserAttributes"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public setVarsWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "setVars"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public startWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "start"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public stopWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "stop"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public trackWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "track"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method

.method public uploadFileWithParams(Ljava/util/Map;)Lcom/leanplum/internal/Requesting;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Requesting;"
        }
    .end annotation

    const-string v0, "uploadFile"

    .line 1
    invoke-direct {p0, v0, p1}, Lcom/leanplum/internal/RequestFactory;->createPostForApiMethod(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Requesting;

    move-result-object p1

    return-object p1
.end method
