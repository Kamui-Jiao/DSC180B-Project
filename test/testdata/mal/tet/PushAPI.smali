.class public interface abstract Lmozilla/appservices/push/PushAPI;
.super Ljava/lang/Object;
.source "PushManager.kt"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmozilla/appservices/push/PushAPI$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract decrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public abstract dispatchInfoForChid(Ljava/lang/String;)Lmozilla/appservices/push/DispatchInfo;
.end method

.method public abstract subscribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmozilla/appservices/push/SubscriptionResponse;
.end method

.method public abstract unsubscribe(Ljava/lang/String;)Z
.end method

.method public abstract unsubscribeAll()Z
.end method

.method public abstract update(Ljava/lang/String;)Z
.end method

.method public abstract verifyConnection()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmozilla/appservices/push/PushSubscriptionChanged;",
            ">;"
        }
    .end annotation
.end method
