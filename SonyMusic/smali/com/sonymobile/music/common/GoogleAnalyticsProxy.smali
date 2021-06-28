.class public Lcom/sonymobile/music/common/GoogleAnalyticsProxy;
.super Ljava/lang/Object;
.source "GoogleAnalyticsProxy.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 8

    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Landroid/content/Context;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static sendException(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$3;

    invoke-direct {v1, p1, p0}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$3;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static sendView(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$1;

    invoke-direct {v1, p1, p0}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$1;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setCustomDimension(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$4;

    invoke-direct {v1, p1, p2, p0}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy$4;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setMacroDataLayerVariable(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-static {p0, p1, p2}, Lcom/sonymobile/music/common/GoogleAnalyticsProxy;->setCustomDimension(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
