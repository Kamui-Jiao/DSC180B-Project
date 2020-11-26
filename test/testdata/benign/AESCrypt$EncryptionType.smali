.class final enum Lcom/leanplum/internal/AESCrypt$EncryptionType;
.super Ljava/lang/Enum;
.source "AESCrypt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leanplum/internal/AESCrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EncryptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leanplum/internal/AESCrypt$EncryptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leanplum/internal/AESCrypt$EncryptionType;

.field public static final enum APP_ID_KEY:Lcom/leanplum/internal/AESCrypt$EncryptionType;

.field public static final enum LEGACY_TOKEN:Lcom/leanplum/internal/AESCrypt$EncryptionType;


# instance fields
.field public final id:I

.field public final prefix:Ljava/lang/String;

.field public final prefixWithBracket:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/leanplum/internal/AESCrypt$EncryptionType;

    const/4 v1, 0x0

    const-string v2, "LEGACY_TOKEN"

    invoke-direct {v0, v2, v1, v1}, Lcom/leanplum/internal/AESCrypt$EncryptionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/leanplum/internal/AESCrypt$EncryptionType;->LEGACY_TOKEN:Lcom/leanplum/internal/AESCrypt$EncryptionType;

    .line 2
    new-instance v0, Lcom/leanplum/internal/AESCrypt$EncryptionType;

    const/4 v2, 0x1

    const-string v3, "APP_ID_KEY"

    invoke-direct {v0, v3, v2, v2}, Lcom/leanplum/internal/AESCrypt$EncryptionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/leanplum/internal/AESCrypt$EncryptionType;->APP_ID_KEY:Lcom/leanplum/internal/AESCrypt$EncryptionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/leanplum/internal/AESCrypt$EncryptionType;

    .line 3
    sget-object v3, Lcom/leanplum/internal/AESCrypt$EncryptionType;->LEGACY_TOKEN:Lcom/leanplum/internal/AESCrypt$EncryptionType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/leanplum/internal/AESCrypt$EncryptionType;->APP_ID_KEY:Lcom/leanplum/internal/AESCrypt$EncryptionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/leanplum/internal/AESCrypt$EncryptionType;->$VALUES:[Lcom/leanplum/internal/AESCrypt$EncryptionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/leanplum/internal/AESCrypt$EncryptionType;->id:I

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, p1, p3

    const-string p2, "%02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leanplum/internal/AESCrypt$EncryptionType;->prefix:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/leanplum/internal/AESCrypt$EncryptionType;->prefix:Ljava/lang/String;

    const-string p3, "["

    invoke-static {p1, p2, p3}, Lcom/android/tools/r8/GeneratedOutlineSupport;->outline19(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leanplum/internal/AESCrypt$EncryptionType;->prefixWithBracket:Ljava/lang/String;

    return-void
.end method

.method private static forId(I)Lcom/leanplum/internal/AESCrypt$EncryptionType;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 1
    sget-object p0, Lcom/leanplum/internal/AESCrypt$EncryptionType;->APP_ID_KEY:Lcom/leanplum/internal/AESCrypt$EncryptionType;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static parseCipherText(Ljava/lang/String;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/leanplum/internal/AESCrypt$EncryptionType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "["

    .line 2
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    sget-object v0, Lcom/leanplum/internal/AESCrypt$EncryptionType;->LEGACY_TOKEN:Lcom/leanplum/internal/AESCrypt$EncryptionType;

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    .line 4
    :cond_1
    sget-object v1, Lcom/leanplum/internal/AESCrypt$EncryptionType;->APP_ID_KEY:Lcom/leanplum/internal/AESCrypt$EncryptionType;

    iget-object v1, v1, Lcom/leanplum/internal/AESCrypt$EncryptionType;->prefixWithBracket:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    sget-object v0, Lcom/leanplum/internal/AESCrypt$EncryptionType;->APP_ID_KEY:Lcom/leanplum/internal/AESCrypt$EncryptionType;

    iget-object v1, v0, Lcom/leanplum/internal/AESCrypt$EncryptionType;->prefixWithBracket:Ljava/lang/String;

    .line 6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/leanplum/internal/AESCrypt$EncryptionType;
    .locals 1

    .line 1
    const-class v0, Lcom/leanplum/internal/AESCrypt$EncryptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leanplum/internal/AESCrypt$EncryptionType;

    return-object p0
.end method

.method public static values()[Lcom/leanplum/internal/AESCrypt$EncryptionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/leanplum/internal/AESCrypt$EncryptionType;->$VALUES:[Lcom/leanplum/internal/AESCrypt$EncryptionType;

    invoke-virtual {v0}, [Lcom/leanplum/internal/AESCrypt$EncryptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leanplum/internal/AESCrypt$EncryptionType;

    return-object v0
.end method
