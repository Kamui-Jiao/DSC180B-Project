.class public final Lmozilla/appservices/push/KeyInfo;
.super Ljava/lang/Object;
.source "PushManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmozilla/appservices/push/KeyInfo$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lmozilla/appservices/push/KeyInfo$Companion;


# instance fields
.field private auth:Ljava/lang/String;

.field private p256dh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmozilla/appservices/push/KeyInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmozilla/appservices/push/KeyInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lmozilla/appservices/push/KeyInfo;->Companion:Lmozilla/appservices/push/KeyInfo$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "auth"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p256dh"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmozilla/appservices/push/KeyInfo;->auth:Ljava/lang/String;

    iput-object p2, p0, Lmozilla/appservices/push/KeyInfo;->p256dh:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAuth()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lmozilla/appservices/push/KeyInfo;->auth:Ljava/lang/String;

    return-object v0
.end method

.method public final getP256dh()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lmozilla/appservices/push/KeyInfo;->p256dh:Ljava/lang/String;

    return-object v0
.end method

.method public final setAuth(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lmozilla/appservices/push/KeyInfo;->auth:Ljava/lang/String;

    return-void
.end method

.method public final setP256dh(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lmozilla/appservices/push/KeyInfo;->p256dh:Ljava/lang/String;

    return-void
.end method
