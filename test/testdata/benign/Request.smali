.class public Lcom/leanplum/internal/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Lcom/leanplum/internal/Requesting;


# instance fields
.field private final apiMethod:Ljava/lang/String;

.field private final countAggregator:Lcom/leanplum/internal/CountAggregator;

.field private error:Lcom/leanplum/internal/Requesting$ErrorCallback;

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

.field private response:Lcom/leanplum/internal/Requesting$ResponseCallback;


# direct methods
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

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/leanplum/internal/Request;->response:Lcom/leanplum/internal/Requesting$ResponseCallback;

    .line 3
    iput-object v0, p0, Lcom/leanplum/internal/Request;->error:Lcom/leanplum/internal/Requesting$ErrorCallback;

    .line 4
    iput-object p1, p0, Lcom/leanplum/internal/Request;->httpMethod:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/leanplum/internal/Request;->apiMethod:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/leanplum/internal/Request;->params:Ljava/util/Map;

    .line 7
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object p1

    iput-object p1, p0, Lcom/leanplum/internal/Request;->countAggregator:Lcom/leanplum/internal/CountAggregator;

    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Request;"
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

    const-string v1, "get_lprequest"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/leanplum/internal/Request;

    const-string v1, "GET"

    invoke-direct {v0, v1, p0, p1}, Lcom/leanplum/internal/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method

.method public static post(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/leanplum/internal/Request;"
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

    const-string v1, "post_lprequest"

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/leanplum/internal/Request;

    const-string v1, "POST"

    invoke-direct {v0, v1, p0, p1}, Lcom/leanplum/internal/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public onError(Lcom/leanplum/internal/Requesting$ErrorCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/leanplum/internal/Request;->error:Lcom/leanplum/internal/Requesting$ErrorCallback;

    .line 2
    iget-object p1, p0, Lcom/leanplum/internal/Request;->countAggregator:Lcom/leanplum/internal/CountAggregator;

    const-string v0, "on_error_lprequest"

    invoke-virtual {p1, v0}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Lcom/leanplum/internal/Requesting$ResponseCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/leanplum/internal/Request;->response:Lcom/leanplum/internal/Requesting$ResponseCallback;

    .line 2
    iget-object p1, p0, Lcom/leanplum/internal/Request;->countAggregator:Lcom/leanplum/internal/CountAggregator;

    const-string v0, "on_response_lprequest"

    invoke-virtual {p1, v0}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method
