.class public abstract Lcom/leanplum/internal/BaseActionContext;
.super Ljava/lang/Object;
.source "BaseActionContext.java"


# instance fields
.field protected args:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isPreview:Z

.field protected isRooted:Z

.field protected messageId:Ljava/lang/String;

.field protected originalMessageId:Ljava/lang/String;

.field protected priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/leanplum/internal/BaseActionContext;->messageId:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/leanplum/internal/BaseActionContext;->originalMessageId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/leanplum/internal/BaseActionContext;->isRooted:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/leanplum/internal/BaseActionContext;->isPreview:Z

    .line 6
    iput-object p1, p0, Lcom/leanplum/internal/BaseActionContext;->messageId:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/leanplum/internal/BaseActionContext;->originalMessageId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getArgs()Ljava/util/Map;
    .locals 1
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
    iget-object v0, p0, Lcom/leanplum/internal/BaseActionContext;->args:Ljava/util/Map;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/BaseActionContext;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalMessageId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/BaseActionContext;->originalMessageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/leanplum/internal/BaseActionContext;->priority:I

    return v0
.end method

.method isPreview()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/leanplum/internal/BaseActionContext;->isPreview:Z

    return v0
.end method

.method setIsPreview(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/leanplum/internal/BaseActionContext;->isPreview:Z

    return-void
.end method

.method setIsRooted(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/leanplum/internal/BaseActionContext;->isRooted:Z

    return-void
.end method
