.class public Lcom/leanplum/internal/OperationQueue;
.super Ljava/lang/Object;
.source "OperationQueue.java"


# static fields
.field private static final OPERATION_QUEUE_NAME:Ljava/lang/String; = "com.leanplum.operation_queue"

.field private static final OPERATION_QUEUE_PRIORITY:I

.field private static instance:Lcom/leanplum/internal/OperationQueue;


# instance fields
.field private executor:Ljava/util/concurrent/Executor;

.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/leanplum/internal/OperationQueue;->uiHandler:Landroid/os/Handler;

    .line 3
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/leanplum/internal/OperationQueue;->executor:Ljava/util/concurrent/Executor;

    .line 4
    invoke-direct {p0}, Lcom/leanplum/internal/OperationQueue;->start()V

    return-void
.end method

.method public static sharedInstance()Lcom/leanplum/internal/OperationQueue;
    .locals 1

    .line 1
    sget-object v0, Lcom/leanplum/internal/OperationQueue;->instance:Lcom/leanplum/internal/OperationQueue;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/leanplum/internal/OperationQueue;

    invoke-direct {v0}, Lcom/leanplum/internal/OperationQueue;-><init>()V

    sput-object v0, Lcom/leanplum/internal/OperationQueue;->instance:Lcom/leanplum/internal/OperationQueue;

    .line 3
    :cond_0
    sget-object v0, Lcom/leanplum/internal/OperationQueue;->instance:Lcom/leanplum/internal/OperationQueue;

    return-object v0
.end method

.method private start()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/OperationQueue;->handlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/os/HandlerThread;

    const/4 v1, 0x0

    const-string v2, "com.leanplum.operation_queue"

    invoke-direct {v0, v2, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/leanplum/internal/OperationQueue;->handlerThread:Landroid/os/HandlerThread;

    .line 3
    iget-object v0, p0, Lcom/leanplum/internal/OperationQueue;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 4
    :cond_0
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/leanplum/internal/OperationQueue;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/leanplum/internal/OperationQueue;->handler:Landroid/os/Handler;

    return-void
.end method

.method private stop()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/leanplum/internal/OperationQueue;->removeAllOperations()V

    .line 2
    iget-object v0, p0, Lcom/leanplum/internal/OperationQueue;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/leanplum/internal/OperationQueue;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method


# virtual methods
.method public addOperation(Ljava/lang/Runnable;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/OperationQueue;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addOperationAfterDelay(Ljava/lang/Runnable;J)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/OperationQueue;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addOperationAtFront(Ljava/lang/Runnable;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/OperationQueue;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addOperationAtTime(Ljava/lang/Runnable;J)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/OperationQueue;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public addParallelOperation(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/OperationQueue;->executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public addUiOperation(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/OperationQueue;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public removeAllOperations()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/OperationQueue;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
