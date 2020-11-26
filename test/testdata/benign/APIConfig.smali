.class public Lcom/leanplum/internal/APIConfig;
.super Ljava/lang/Object;
.source "APIConfig.java"


# instance fields
.field private accessKey:Ljava/lang/String;

.field private appId:Ljava/lang/String;

.field private final countAggregator:Lcom/leanplum/internal/CountAggregator;

.field private final featureFlagManager:Lcom/leanplum/internal/FeatureFlagManager;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/leanplum/internal/FeatureFlagManager;Lcom/leanplum/internal/CountAggregator;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/leanplum/internal/APIConfig;->featureFlagManager:Lcom/leanplum/internal/FeatureFlagManager;

    .line 3
    iput-object p2, p0, Lcom/leanplum/internal/APIConfig;->countAggregator:Lcom/leanplum/internal/CountAggregator;

    return-void
.end method


# virtual methods
.method public loadToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/leanplum/internal/APIConfig;->token:Ljava/lang/String;

    return-void
.end method

.method public setAppId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/leanplum/internal/APIConfig;->appId:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/leanplum/internal/APIConfig;->accessKey:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/leanplum/internal/APIConfig;->countAggregator:Lcom/leanplum/internal/CountAggregator;

    const-string p2, "set_app_id"

    invoke-virtual {p1, p2}, Lcom/leanplum/internal/CountAggregator;->incrementCount(Ljava/lang/String;)V

    return-void
.end method
