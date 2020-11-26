.class public Lcom/leanplum/internal/ActionArg;
.super Ljava/lang/Object;
.source "ActionArg.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private isAsset:Z

.field private kind:Ljava/lang/String;

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionArgNamed(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/internal/ActionArg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/leanplum/internal/ActionArg<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "action"

    .line 2
    invoke-static {p0, p1, v0}, Lcom/leanplum/internal/ActionArg;->argNamed(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/internal/ActionArg;

    move-result-object p0

    return-object p0
.end method

.method public static argNamed(Ljava/lang/String;Ljava/lang/Object;)Lcom/leanplum/internal/ActionArg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)",
            "Lcom/leanplum/internal/ActionArg<",
            "TT;>;"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Lcom/leanplum/internal/VarCache;->kindFromValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/leanplum/internal/ActionArg;->argNamed(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/internal/ActionArg;

    move-result-object p0

    return-object p0
.end method

.method private static argNamed(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/internal/ActionArg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/String;",
            ")",
            "Lcom/leanplum/internal/ActionArg<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/leanplum/internal/ActionArg;

    invoke-direct {v0}, Lcom/leanplum/internal/ActionArg;-><init>()V

    .line 2
    iput-object p0, v0, Lcom/leanplum/internal/ActionArg;->name:Ljava/lang/String;

    .line 3
    iput-object p2, v0, Lcom/leanplum/internal/ActionArg;->kind:Ljava/lang/String;

    .line 4
    iput-object p1, v0, Lcom/leanplum/internal/ActionArg;->defaultValue:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lcom/leanplum/Leanplum;->countAggregator()Lcom/leanplum/internal/CountAggregator;

    move-result-object p0

    const-string p1, "arg_named"

    invoke-virtual {p0, p1}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-object v0
.end method

.method public static assetArgNamed(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/internal/ActionArg;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/leanplum/internal/ActionArg<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "file"

    .line 1
    invoke-static {p0, p1, v0}, Lcom/leanplum/internal/ActionArg;->argNamed(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/internal/ActionArg;

    move-result-object p0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/leanplum/internal/ActionArg;->isAsset:Z

    .line 3
    iget-object p1, p0, Lcom/leanplum/internal/ActionArg;->defaultValue:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/leanplum/internal/ActionArg;->defaultStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/leanplum/internal/VarCache;->registerFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ZLjava/lang/String;I)Z

    return-object p0
.end method

.method public static colorArgNamed(Ljava/lang/String;I)Lcom/leanplum/internal/ActionArg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Lcom/leanplum/internal/ActionArg<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "color"

    invoke-static {p0, p1, v0}, Lcom/leanplum/internal/ActionArg;->argNamed(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/internal/ActionArg;

    move-result-object p0

    return-object p0
.end method

.method public static fileArgNamed(Ljava/lang/String;Ljava/lang/String;)Lcom/leanplum/internal/ActionArg;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/leanplum/internal/ActionArg<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    const-string v0, "file"

    .line 2
    invoke-static {p0, p1, v0}, Lcom/leanplum/internal/ActionArg;->argNamed(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Lcom/leanplum/internal/ActionArg;

    move-result-object p0

    .line 3
    iget-object p1, p0, Lcom/leanplum/internal/ActionArg;->defaultValue:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/leanplum/internal/ActionArg;->defaultStream()Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/leanplum/internal/VarCache;->registerFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;ZLjava/lang/String;I)Z

    return-object p0
.end method


# virtual methods
.method public defaultStream()Ljava/io/InputStream;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/ActionArg;->kind:Ljava/lang/String;

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 2
    iget-boolean v0, p0, Lcom/leanplum/internal/ActionArg;->isAsset:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Lcom/leanplum/internal/ActionArg;->isAsset:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v0, p0, Lcom/leanplum/internal/ActionArg;->defaultValue:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/leanplum/internal/FileManager;->stream(ZLjava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;[B)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public defaultValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/ActionArg;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method public kind()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/ActionArg;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/leanplum/internal/ActionArg;->name:Ljava/lang/String;

    return-object v0
.end method
