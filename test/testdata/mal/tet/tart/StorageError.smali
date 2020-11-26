.class public Lmozilla/appservices/push/StorageError;
.super Lmozilla/appservices/push/PushError;
.source "RustError.kt"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/ArrayIteratorKt;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lmozilla/appservices/push/PushError;-><init>(Ljava/lang/String;)V

    return-void
.end method
