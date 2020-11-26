.class public final enum Lcom/leanplum/internal/Log$LeanplumLogType;
.super Ljava/lang/Enum;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leanplum/internal/Log;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LeanplumLogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leanplum/internal/Log$LeanplumLogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leanplum/internal/Log$LeanplumLogType;

.field public static final enum DEBUG:Lcom/leanplum/internal/Log$LeanplumLogType;

.field public static final enum ERROR:Lcom/leanplum/internal/Log$LeanplumLogType;

.field public static final enum INFO:Lcom/leanplum/internal/Log$LeanplumLogType;

.field public static final enum PRIVATE:Lcom/leanplum/internal/Log$LeanplumLogType;

.field public static final enum VERBOSE:Lcom/leanplum/internal/Log$LeanplumLogType;

.field public static final enum WARNING:Lcom/leanplum/internal/Log$LeanplumLogType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/leanplum/internal/Log$LeanplumLogType;

    const/4 v1, 0x0

    const-string v2, "ERROR"

    invoke-direct {v0, v2, v1}, Lcom/leanplum/internal/Log$LeanplumLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leanplum/internal/Log$LeanplumLogType;->ERROR:Lcom/leanplum/internal/Log$LeanplumLogType;

    .line 2
    new-instance v0, Lcom/leanplum/internal/Log$LeanplumLogType;

    const/4 v2, 0x1

    const-string v3, "WARNING"

    invoke-direct {v0, v3, v2}, Lcom/leanplum/internal/Log$LeanplumLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leanplum/internal/Log$LeanplumLogType;->WARNING:Lcom/leanplum/internal/Log$LeanplumLogType;

    .line 3
    new-instance v0, Lcom/leanplum/internal/Log$LeanplumLogType;

    const/4 v3, 0x2

    const-string v4, "INFO"

    invoke-direct {v0, v4, v3}, Lcom/leanplum/internal/Log$LeanplumLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leanplum/internal/Log$LeanplumLogType;->INFO:Lcom/leanplum/internal/Log$LeanplumLogType;

    .line 4
    new-instance v0, Lcom/leanplum/internal/Log$LeanplumLogType;

    const/4 v4, 0x3

    const-string v5, "VERBOSE"

    invoke-direct {v0, v5, v4}, Lcom/leanplum/internal/Log$LeanplumLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leanplum/internal/Log$LeanplumLogType;->VERBOSE:Lcom/leanplum/internal/Log$LeanplumLogType;

    .line 5
    new-instance v0, Lcom/leanplum/internal/Log$LeanplumLogType;

    const/4 v5, 0x4

    const-string v6, "PRIVATE"

    invoke-direct {v0, v6, v5}, Lcom/leanplum/internal/Log$LeanplumLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leanplum/internal/Log$LeanplumLogType;->PRIVATE:Lcom/leanplum/internal/Log$LeanplumLogType;

    .line 6
    new-instance v0, Lcom/leanplum/internal/Log$LeanplumLogType;

    const/4 v6, 0x5

    const-string v7, "DEBUG"

    invoke-direct {v0, v7, v6}, Lcom/leanplum/internal/Log$LeanplumLogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leanplum/internal/Log$LeanplumLogType;->DEBUG:Lcom/leanplum/internal/Log$LeanplumLogType;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/leanplum/internal/Log$LeanplumLogType;

    .line 7
    sget-object v7, Lcom/leanplum/internal/Log$LeanplumLogType;->ERROR:Lcom/leanplum/internal/Log$LeanplumLogType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/leanplum/internal/Log$LeanplumLogType;->WARNING:Lcom/leanplum/internal/Log$LeanplumLogType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leanplum/internal/Log$LeanplumLogType;->INFO:Lcom/leanplum/internal/Log$LeanplumLogType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/leanplum/internal/Log$LeanplumLogType;->VERBOSE:Lcom/leanplum/internal/Log$LeanplumLogType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/leanplum/internal/Log$LeanplumLogType;->PRIVATE:Lcom/leanplum/internal/Log$LeanplumLogType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/leanplum/internal/Log$LeanplumLogType;->DEBUG:Lcom/leanplum/internal/Log$LeanplumLogType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/leanplum/internal/Log$LeanplumLogType;->$VALUES:[Lcom/leanplum/internal/Log$LeanplumLogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/leanplum/internal/Log$LeanplumLogType;
    .locals 1

    .line 1
    const-class v0, Lcom/leanplum/internal/Log$LeanplumLogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leanplum/internal/Log$LeanplumLogType;

    return-object p0
.end method

.method public static values()[Lcom/leanplum/internal/Log$LeanplumLogType;
    .locals 1

    .line 1
    sget-object v0, Lcom/leanplum/internal/Log$LeanplumLogType;->$VALUES:[Lcom/leanplum/internal/Log$LeanplumLogType;

    invoke-virtual {v0}, [Lcom/leanplum/internal/Log$LeanplumLogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leanplum/internal/Log$LeanplumLogType;

    return-object v0
.end method
