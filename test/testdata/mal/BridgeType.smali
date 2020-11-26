.class public final enum Lmozilla/appservices/push/BridgeType;
.super Ljava/lang/Enum;
.source "PushManager.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmozilla/appservices/push/BridgeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmozilla/appservices/push/BridgeType;

.field public static final enum ADM:Lmozilla/appservices/push/BridgeType;

.field public static final enum APNS:Lmozilla/appservices/push/BridgeType;

.field public static final enum FCM:Lmozilla/appservices/push/BridgeType;

.field public static final enum TEST:Lmozilla/appservices/push/BridgeType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lmozilla/appservices/push/BridgeType;

    new-instance v1, Lmozilla/appservices/push/BridgeType;

    const/4 v2, 0x0

    const-string v3, "FCM"

    invoke-direct {v1, v3, v2}, Lmozilla/appservices/push/BridgeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmozilla/appservices/push/BridgeType;->FCM:Lmozilla/appservices/push/BridgeType;

    aput-object v1, v0, v2

    new-instance v1, Lmozilla/appservices/push/BridgeType;

    const/4 v2, 0x1

    const-string v3, "ADM"

    invoke-direct {v1, v3, v2}, Lmozilla/appservices/push/BridgeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmozilla/appservices/push/BridgeType;->ADM:Lmozilla/appservices/push/BridgeType;

    aput-object v1, v0, v2

    new-instance v1, Lmozilla/appservices/push/BridgeType;

    const/4 v2, 0x2

    const-string v3, "APNS"

    invoke-direct {v1, v3, v2}, Lmozilla/appservices/push/BridgeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmozilla/appservices/push/BridgeType;->APNS:Lmozilla/appservices/push/BridgeType;

    aput-object v1, v0, v2

    new-instance v1, Lmozilla/appservices/push/BridgeType;

    const/4 v2, 0x3

    const-string v3, "TEST"

    invoke-direct {v1, v3, v2}, Lmozilla/appservices/push/BridgeType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lmozilla/appservices/push/BridgeType;->TEST:Lmozilla/appservices/push/BridgeType;

    aput-object v1, v0, v2

    sput-object v0, Lmozilla/appservices/push/BridgeType;->$VALUES:[Lmozilla/appservices/push/BridgeType;

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

.method public static valueOf(Ljava/lang/String;)Lmozilla/appservices/push/BridgeType;
    .locals 1

    const-class v0, Lmozilla/appservices/push/BridgeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmozilla/appservices/push/BridgeType;

    return-object p0
.end method

.method public static values()[Lmozilla/appservices/push/BridgeType;
    .locals 1

    sget-object v0, Lmozilla/appservices/push/BridgeType;->$VALUES:[Lmozilla/appservices/push/BridgeType;

    invoke-virtual {v0}, [Lmozilla/appservices/push/BridgeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmozilla/appservices/push/BridgeType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "Locale.US"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/ArrayIteratorKt;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/ArrayIteratorKt;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
