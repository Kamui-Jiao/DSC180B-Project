.class Lcom/leanplum/internal/RequestOld$1;
.super Ljava/lang/Object;
.source "RequestOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leanplum/internal/RequestOld;->saveRequestForLater(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leanplum/internal/RequestOld;

.field final synthetic val$args:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/leanplum/internal/RequestOld;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/leanplum/internal/RequestOld$1;->this$0:Lcom/leanplum/internal/RequestOld;

    iput-object p2, p0, Lcom/leanplum/internal/RequestOld$1;->val$args:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "__leanplum_uuid"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/leanplum/Leanplum;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v2, "__leanplum__"

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 4
    invoke-static {}, Lcom/leanplum/internal/LeanplumEventDataManager;->sharedInstance()Lcom/leanplum/internal/LeanplumEventDataManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/leanplum/internal/LeanplumEventDataManager;->getEventsCount()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 5
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    sget v5, Lcom/leanplum/internal/RequestOld;->MAX_EVENTS_PER_API_CALL:I

    int-to-long v5, v5

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 7
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 9
    invoke-static {v2}, Lcom/leanplum/utils/SharedPreferencesUtil;->commitChanges(Landroid/content/SharedPreferences$Editor;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/leanplum/internal/RequestOld$1;->val$args:Ljava/util/Map;

    const-string v2, "uuid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Lcom/leanplum/internal/LeanplumEventDataManager;->sharedInstance()Lcom/leanplum/internal/LeanplumEventDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leanplum/internal/RequestOld$1;->val$args:Ljava/util/Map;

    invoke-static {v1}, Lcom/leanplum/internal/JsonConverter;->toJson(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leanplum/internal/LeanplumEventDataManager;->insertEvent(Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/leanplum/internal/RequestOld$1;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v0}, Lcom/leanplum/internal/RequestOld;->access$000(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ResponseCallback;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/leanplum/internal/RequestOld$1;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v0}, Lcom/leanplum/internal/RequestOld;->access$100(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ErrorCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/leanplum/internal/Util;->isConnected()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13
    :cond_3
    invoke-static {}, Lcom/leanplum/internal/RequestOld;->access$200()Lcom/leanplum/internal/LeanplumEventCallbackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leanplum/internal/RequestOld$1;->this$0:Lcom/leanplum/internal/RequestOld;

    iget-object v2, p0, Lcom/leanplum/internal/RequestOld$1;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v2}, Lcom/leanplum/internal/RequestOld;->access$000(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ResponseCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/leanplum/internal/RequestOld$1;->this$0:Lcom/leanplum/internal/RequestOld;

    invoke-static {v3}, Lcom/leanplum/internal/RequestOld;->access$100(Lcom/leanplum/internal/RequestOld;)Lcom/leanplum/internal/RequestOld$ErrorCallback;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/leanplum/internal/LeanplumEventCallbackManager;->addCallbacks(Lcom/leanplum/internal/RequestOld;Lcom/leanplum/internal/RequestOld$ResponseCallback;Lcom/leanplum/internal/RequestOld$ErrorCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lcom/leanplum/internal/Util;->handleException(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method
