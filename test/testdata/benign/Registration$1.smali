.class final Lcom/leanplum/internal/Registration$1;
.super Ljava/lang/Object;
.source "Registration.java"

# interfaces
.implements Lcom/leanplum/internal/RequestOld$ResponseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leanplum/internal/Registration;->registerDevice(Ljava/lang/String;Lcom/leanplum/callbacks/StartCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/leanplum/callbacks/StartCallback;


# direct methods
.method constructor <init>(Lcom/leanplum/callbacks/StartCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/leanplum/internal/Registration$1;->val$callback:Lcom/leanplum/callbacks/StartCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public response(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/leanplum/internal/RequestOld;->isResponseSuccess(Lorg/json/JSONObject;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/leanplum/internal/Registration$1;->val$callback:Lcom/leanplum/callbacks/StartCallback;

    invoke-virtual {v1, v0}, Lcom/leanplum/callbacks/StartCallback;->setSuccess(Z)V

    if-nez v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/leanplum/internal/RequestOld;->getResponseError(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 4
    invoke-static {v0}, Lcom/leanplum/internal/Log;->e([Ljava/lang/Object;)V

    .line 5
    :cond_0
    invoke-static {}, Lcom/leanplum/internal/OperationQueue;->sharedInstance()Lcom/leanplum/internal/OperationQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/leanplum/internal/Registration$1;->val$callback:Lcom/leanplum/callbacks/StartCallback;

    invoke-virtual {p1, v0}, Lcom/leanplum/internal/OperationQueue;->addUiOperation(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Lcom/leanplum/internal/Util;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
