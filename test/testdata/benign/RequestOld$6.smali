.class Lcom/leanplum/internal/RequestOld$6;
.super Ljava/lang/Object;
.source "RequestOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leanplum/internal/RequestOld;->downloadFile(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leanplum/internal/RequestOld;

.field final synthetic val$dict:Ljava/util/Map;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/leanplum/internal/RequestOld;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/leanplum/internal/RequestOld$6;->this$0:Lcom/leanplum/internal/RequestOld;

    iput-object p2, p0, Lcom/leanplum/internal/RequestOld$6;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/leanplum/internal/RequestOld$6;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/leanplum/internal/RequestOld$6;->val$dict:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/leanplum/internal/RequestOld$6;->this$0:Lcom/leanplum/internal/RequestOld;

    sget-object v1, Lcom/leanplum/internal/Constants;->API_HOST_NAME:Ljava/lang/String;

    sget-object v2, Lcom/leanplum/internal/Constants;->API_SERVLET:Ljava/lang/String;

    iget-object v3, p0, Lcom/leanplum/internal/RequestOld$6;->val$path:Ljava/lang/String;

    iget-object v4, p0, Lcom/leanplum/internal/RequestOld$6;->val$url:Ljava/lang/String;

    iget-object v5, p0, Lcom/leanplum/internal/RequestOld$6;->val$dict:Ljava/util/Map;

    invoke-static/range {v0 .. v5}, Lcom/leanplum/internal/RequestOld;->access$900(Lcom/leanplum/internal/RequestOld;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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
