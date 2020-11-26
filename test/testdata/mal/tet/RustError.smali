.class public Lmozilla/appservices/push/RustError;
.super Lcom/sun/jna/Structure;
.source "RustError.kt"


# annotations
.annotation runtime Lcom/sun/jna/Structure$FieldOrder;
    value = {
        "code",
        "message"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmozilla/appservices/push/RustError$ByReference;
    }
.end annotation


# instance fields
.field public code:I

.field public message:Lcom/sun/jna/Pointer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/jna/Structure;-><init>()V

    return-void
.end method


# virtual methods
.method public final consumeErrorMessage()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lmozilla/appservices/push/RustError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lmozilla/appservices/push/RustError;->message:Lcom/sun/jna/Pointer;

    if-eqz v1, :cond_1

    .line 3
    sget-object v1, Lmozilla/appservices/push/LibPushFFI;->Companion:Lmozilla/appservices/push/LibPushFFI$Companion;

    invoke-virtual {v1}, Lmozilla/appservices/push/LibPushFFI$Companion;->getINSTANCE$push_release()Lmozilla/appservices/push/LibPushFFI;

    move-result-object v1

    iget-object v2, p0, Lmozilla/appservices/push/RustError;->message:Lcom/sun/jna/Pointer;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v2}, Lmozilla/appservices/push/LibPushFFI;->push_destroy_string(Lcom/sun/jna/Pointer;)V

    .line 4
    iput-object v3, p0, Lmozilla/appservices/push/RustError;->message:Lcom/sun/jna/Pointer;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lkotlin/jvm/internal/ArrayIteratorKt;->throwNpe()V

    throw v3

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "consumeErrorMessage called with null message!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lmozilla/appservices/push/RustError;->message:Lcom/sun/jna/Pointer;

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    const-string v3, "utf8"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/jna/Pointer;->getString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final intoException()Lmozilla/appservices/push/PushError;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmozilla/appservices/push/RustError;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lmozilla/appservices/push/RustError;->consumeErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget v1, p0, Lmozilla/appservices/push/RustError;->code:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x16

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    .line 4
    new-instance v1, Lmozilla/appservices/push/PushError;

    invoke-direct {v1, v0}, Lmozilla/appservices/push/PushError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 5
    :pswitch_0
    new-instance v1, Lmozilla/appservices/push/UrlParseError;

    invoke-direct {v1, v0}, Lmozilla/appservices/push/UrlParseError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 6
    :pswitch_1
    new-instance v1, Lmozilla/appservices/push/RecordNotFoundError;

    invoke-direct {v1, v0}, Lmozilla/appservices/push/RecordNotFoundError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 7
    :pswitch_2
    new-instance v1, Lmozilla/appservices/push/TranscodingError;

    invoke-direct {v1, v0}, Lmozilla/appservices/push/TranscodingError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 8
    :pswitch_3
    new-instance v0, Lmozilla/appservices/push/MissingRegistrationTokenError;

    invoke-direct {v0}, Lmozilla/appservices/push/MissingRegistrationTokenError;-><init>()V

    return-object v0

    .line 9
    :pswitch_4
    new-instance v1, Lmozilla/appservices/push/StorageSqlError;

    invoke-direct {v1, v0}, Lmozilla/appservices/push/StorageSqlError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 10
    :pswitch_5
    new-instance v1, Lmozilla/appservices/push/StorageError;

    invoke-direct {v1, v0}, Lmozilla/appservices/push/StorageError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 11
    :pswitch_6
    new-instance v0, Lmozilla/appservices/push/AlreadyRegisteredError;

    invoke-direct {v0}, Lmozilla/appservices/push/AlreadyRegisteredError;-><init>()V

    return-object v0

    .line 12
    :pswitch_7
    new-instance v1, Lmozilla/appservices/push/CommunicationServerError;

    invoke-direct {v1, v0}, Lmozilla/appservices/push/CommunicationServerError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 13
    :pswitch_8
    new-instance v1, Lmozilla/appservices/push/CommunicationError;

    invoke-direct {v1, v0}, Lmozilla/appservices/push/CommunicationError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 14
    :pswitch_9
    new-instance v1, Lmozilla/appservices/push/CryptoError;

    invoke-direct {v1, v0}, Lmozilla/appservices/push/CryptoError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 15
    :cond_0
    new-instance v1, Lmozilla/appservices/push/GeneralError;

    invoke-direct {v1, v0}, Lmozilla/appservices/push/GeneralError;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 16
    :cond_1
    new-instance v1, Lmozilla/appservices/push/InternalPanic;

    invoke-direct {v1, v0}, Lmozilla/appservices/push/InternalPanic;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 17
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "[Bug] intoException called on non-failure!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isFailure()Z
    .locals 1

    .line 1
    iget v0, p0, Lmozilla/appservices/push/RustError;->code:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isSuccess()Z
    .locals 1

    .line 1
    iget v0, p0, Lmozilla/appservices/push/RustError;->code:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
