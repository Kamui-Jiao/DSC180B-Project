.class final Lcom/leanplum/internal/ResourceQualifiers$Qualifier$1;
.super Lcom/leanplum/internal/ResourceQualifiers$QualifierFilter;
.source "ResourceQualifiers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leanplum/internal/ResourceQualifiers$Qualifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/leanplum/internal/ResourceQualifiers$QualifierFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public getMatch(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const-string v0, "mcc"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isMatch(Ljava/lang/Object;Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)Z
    .locals 0

    .line 1
    iget p2, p2, Landroid/content/res/Configuration;->mcc:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method