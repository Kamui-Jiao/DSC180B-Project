.class final Lcom/leanplum/internal/Registration$2;
.super Ljava/lang/Object;
.source "Registration.java"

# interfaces
.implements Lcom/leanplum/internal/RequestOld$ErrorCallback;


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
    iput-object p1, p0, Lcom/leanplum/internal/Registration$2;->val$callback:Lcom/leanplum/callbacks/StartCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/leanplum/internal/Registration$2;->val$callback:Lcom/leanplum/callbacks/StartCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/leanplum/callbacks/StartCallback;->setSuccess(Z)V

    .line 2
    invoke-static {}, Lcom/leanplum/internal/OperationQueue;->sharedInstance()Lcom/leanplum/internal/OperationQueue;

    move-result-object p1

    iget-object v0, p0, Lcom/leanplum/internal/Registration$2;->val$callback:Lcom/leanplum/callbacks/StartCallback;

    invoke-virtual {p1, v0}, Lcom/leanplum/internal/OperationQueue;->addUiOperation(Ljava/lang/Runnable;)V

    return-void
.end method
