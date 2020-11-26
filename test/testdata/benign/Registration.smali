.class public Lcom/leanplum/internal/Registration;
.super Ljava/lang/Object;
.source "Registration.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerDevice(Ljava/lang/String;Lcom/leanplum/callbacks/StartCallback;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "email"

    .line 2
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "registerDevice"

    .line 3
    invoke-static {p0, v0}, Lcom/leanplum/internal/RequestOld;->post(Ljava/lang/String;Ljava/util/Map;)Lcom/leanplum/internal/RequestOld;

    move-result-object p0

    .line 4
    new-instance v0, Lcom/leanplum/internal/Registration$1;

    invoke-direct {v0, p1}, Lcom/leanplum/internal/Registration$1;-><init>(Lcom/leanplum/callbacks/StartCallback;)V

    invoke-virtual {p0, v0}, Lcom/leanplum/internal/RequestOld;->onResponse(Lcom/leanplum/internal/RequestOld$ResponseCallback;)V

    .line 5
    new-instance v0, Lcom/leanplum/internal/Registration$2;

    invoke-direct {v0, p1}, Lcom/leanplum/internal/Registration$2;-><init>(Lcom/leanplum/callbacks/StartCallback;)V

    invoke-virtual {p0, v0}, Lcom/leanplum/internal/RequestOld;->onError(Lcom/leanplum/internal/RequestOld$ErrorCallback;)V

    .line 6
    invoke-virtual {p0}, Lcom/leanplum/internal/RequestOld;->sendIfConnected()V

    .line 7
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object p0

    const-string p1, "register_device"

    invoke-virtual {p0, p1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method
