.class Lcom/leanplum/internal/RequestOld$3;
.super Ljava/lang/Object;
.source "RequestOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leanplum/internal/RequestOld;->sendIfDelayed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leanplum/internal/RequestOld;


# direct methods
.method constructor <init>(Lcom/leanplum/internal/RequestOld;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/leanplum/internal/RequestOld$3;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/internal/RequestOld$3;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v0}, Lcom/leanplum/internal/RequestOld;->access$300(Lcom/leanplum/internal/RequestOld;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lcom/leanplum/internal/Util;->handleException(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
