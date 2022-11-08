.class Lcom/sonyericsson/music/proxyservice/AnalyticsWorker$AnalyticsRunner;
.super Ljava/lang/Object;
.source "AnalyticsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/AnalyticsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnalyticsRunner"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker$AnalyticsRunner;->mContext:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker$AnalyticsRunner;->mIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 72
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker$AnalyticsRunner;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "com.sonyericsson.music.SEND_ANALYTICS_ACTION"

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/AnalyticsWorker$AnalyticsRunner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/music/MusicApplication;

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lcom/sonyericsson/music/MusicApplication;->isConfigFetchComplete()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v0}, Lcom/sonyericsson/music/MusicApplication;->sendAnalytics()V

    :cond_1
    return-void
.end method
